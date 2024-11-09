
repo_urls=(\
    "https://github.com/scalanlp/breeze.git" \
    "https://github.com/catboost/catboost.git" \
    "https://github.com/deepjavalibrary/d2l-java.git" \
    "https://github.com/deepjavalibrary/djl.git" \
    "https://github.com/deepjavalibrary/djl-demo.git" \
    "https://github.com/ageron/handson-ml3.git" \
    "https://github.com/huggingface/evaluate.git" \
    "https://github.com/huggingface/tokenizers.git" \
    "https://github.com/huggingface/transformers.git" \
    "https://github.com/JohnSnowLabs/spark-nlp.git" \
    "https://github.com/JohnSnowLabs/spark-nlp-workshop.git" \
    "https://github.com/nlp-with-transformers/notebooks.git" \
    "https://github.com/openai/openai-cookbook.git" \
    "https://github.com/openai/openai-python.git" \
    "https://github.com/openai/openai-go.git" \
    "https://github.com/openai/swarm.git" \
    "https://github.com/langchain-ai/langchain.git" \
    "https://github.com/langchain-ai/langgraph.git" \
    "https://github.com/salesforce/sprinkler.git" \
    "https://github.com/salesforce/orchard.git" \
    "https://github.com/salesforce/spade.git" \
    "https://github.com/salesforce/acdc.git" \
    "https://github.com/salesforce/orchard-ui.git" \
) 

REPO_PATH="$HOME/Workspace/github"
[ ! -d "$REPO_PATH" ] && mkdir -p "$REPO_PATH"

for url in "${repo_urls[@]}"
do
    repo=$(basename "$url" | cut -f 1 -d ".")
    path=$(dirname "$url")
    owner=$(basename "$path")
    destination=$HOME/Workspace/github/$owner

    echo "Checking $repo"
    if [ -d "$destination/$repo" ]; then
        echo "Updating $repo"
        cd "$destination/$repo"
        git pull
    else
        echo "$destination/$repo does not exist."
        [ ! -d "$destination" ] && mkdir -p "$destination"
        echo "Cloning $repo"
        cd $destination
        git clone $url 
    fi
done
