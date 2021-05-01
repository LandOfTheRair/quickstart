function ResetRepo {
    param ($RepoName)
    if (-Not(test-path $RepoName)) { git clone "https://github.com/LandOfTheRair/$RepoName.git" }
    git -C $RepoName reset --hard origin/master
    git -C $RepoName clean -f

}
ResetRepo -RepoName Assets
ResetRepo -RepoName Content
ResetRepo -RepoName LandOfTheRair
ResetRepo -RepoName phaser-sandbox