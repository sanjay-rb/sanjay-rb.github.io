import subprocess
import shutil

cwd = r"E:\PROJECT\Flutter\sanjayrb"
build_dir = r"E:\PROJECT\Flutter\sanjayrb\build\web"
release_dir = r"E:\PROJECT\WebApp\sanjay-rb.github.io"


cmd = "flutter --version"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=cwd, check=True)

shutil.rmtree(build_dir.replace('web', ''))

cmd = "flutter build web --release"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=cwd, check=True)

shutil.copytree(build_dir, release_dir, dirs_exist_ok=True)

cmd = "git status"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = "git add --all"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = 'git commit -m "Updated onclick on icons"'
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = "git push"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)
