import subprocess
import shutil

cwd = r"/Users/sanjayrb/projects"
build_dir = r"/Users/sanjayrb/projects/sanjayrb/"
release_dir = r"/Users/sanjayrb/projects/sanjay-rb.github.io"


cmd = f"rm -rf {release_dir}"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=cwd, check=True)

cmd = f"git clone https://github.com/sanjay-rb/sanjay-rb.github.io.git"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=cwd, check=True)

cmd = "flutter build web --release"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=build_dir, check=True)

shutil.copytree(build_dir + 'build/web', release_dir, dirs_exist_ok=True)

cmd = "git status"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = "git add --all"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = 'git commit -m "Added native splash"'
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = "git push"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=release_dir, check=True)

cmd = f"rm -rf {release_dir}"
print(f"\n> {cmd}")
subprocess.run(cmd, shell=True, cwd=cwd, check=True)
