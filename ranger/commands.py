# This is a sample commands.py.  You can add your own commands here.
#
# Please refer to commands_full.py for all the default commands and a complete
# documentation.  Do NOT add them all here, or you may end up with defunct
# commands when upgrading ranger.

# A simple command for demonstration purposes follows.
# -----------------------------------------------------------------------------

from __future__ import (absolute_import, division, print_function)

# You can import any python module as needed.
import os

# You always need to import ranger.api.commands here to get the Command class:
from ranger.api.commands import Command


# Any class that is a subclass of "Command" will be integrated into ranger as a
# command.  Try typing ":my_edit<ENTER>" in ranger!
class my_edit(Command):
    # The so-called doc-string of the class will be visible in the built-in
    # help that is accessible by typing "?c" inside ranger.
    """:my_edit <filename>

    A sample command for demonstration purposes that opens a file in an editor.
    """

    # The execute method is called when you run this command in ranger.
    def execute(self):
        # self.arg(1) is the first (space-separated) argument to the function.
        # This way you can write ":my_edit somefilename<ENTER>".
        if self.arg(1):
            # self.rest(1) contains self.arg(1) and everything that follows
            target_filename = self.rest(1)
        else:
            # self.fm is a ranger.core.filemanager.FileManager object and gives
            # you access to internals of ranger.
            # self.fm.thisfile is a ranger.container.file.File object and is a
            # reference to the currently selected file.
            target_filename = self.fm.thisfile.path

        # This is a generic function to print text in ranger.
        self.fm.notify("Let's edit the file " + target_filename + "!")

        # Using bad=True in fm.notify allows you to print error messages:
        if not os.path.exists(target_filename):
            self.fm.notify("The given file does not exist!", bad=True)
            return

        # This executes a function from ranger.core.acitons, a module with a
        # variety of subroutines that can help you construct commands.
        # Check out the source, or run "pydoc ranger.core.actions" for a list.
        self.fm.edit_file(target_filename)

    # The tab method is called when you press tab, and should return a list of
    # suggestions that the user will tab through.
    # tabnum is 1 for <TAB> and -1 for <S-TAB> by default
    def tab(self, tabnum):
        # This is a generic tab-completion function that iterates through the
        # content of the current directory.
        return self._tab_directory_content()

# 定义code命令打开
class code(Command):
    """:code <path>

    Open a file or directory in Visual Studio Code.
    """

    def execute(self):
        # 如果提供了参数，则使用该参数；否则，使用当前选中的文件或文件夹
        target_path = self.rest(1) if self.arg(1) else self.fm.thisfile.path

        # 检查路径是否存在
        if not os.path.exists(target_path):
            self.fm.notify("Path does not exist: " + target_path, bad=True)
            return

        # 执行命令打开 Visual Studio Code
        self.fm.execute_command('code ' + target_path)

    def tab(self, tabnum):
        # 提供文件和文件夹的自动补全
        return self._tab_directory_content()


from ranger.api.commands import Command

class extract(Command):
    """:extract <filename>
    解压 ZIP/TAR/GZ/RAR/7Z 等压缩文件
    """
    def execute(self):
        import os
        file = self.rest(1)
        if not file:
            file = self.fm.thisfile.path
        if not os.path.exists(file):
            self.fm.notify(f"文件不存在: {file}", bad=True)
            return

        # 获取文件名（不带扩展名）
        name, _ = os.path.splitext(file)
        cmd = None

        if file.endswith(('.zip', '.ZIP')):
            cmd = f'unzip "{file}" -d "{name}"'
        elif file.endswith(('.tar.gz', '.tgz')):
            cmd = f'tar -xzvf "{file}" -C "{name}"'
        elif file.endswith(('.tar.xz', '.txz')):
            cmd = f'tar -xJvf "{file}" -C "{name}"'
        elif file.endswith(('.rar', '.RAR')):
            cmd = f'unrar x "{file}" "{name}/"'
        elif file.endswith(('.7z', '.7Z')):
            cmd = f'7z x "{file}" -o"{name}"'
        else:
            self.fm.notify("不支持的文件格式！", bad=True)
            return

        # 创建目标目录并解压
        os.makedirs(name, exist_ok=True)
        self.fm.run(cmd)
        self.fm.notify(f"解压完成: {file} → {name}/")
