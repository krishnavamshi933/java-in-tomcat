def checkout_git(String repo, String branch) {
    
    echo "This is for checking out git code."
   git credentialsId: 'krishnavamshi933', url: "git@github.com:krishnavamshi933/${repo}.git", branch: "${branch}"

}

return this
