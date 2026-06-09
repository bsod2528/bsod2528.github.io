#!/bin/bash

echo "## Codebase Stats" > _includes/code_stats.html
echo "" >> _includes/code_stats.html

# total files and folders.
total_files=$(find . -type f -not -path "./_site/*" -not -path "./.jekyll-cache/*" | wc -l)
echo "- Total files: <span class='cb'>$total_files</span>" >> _includes/code_stats.html

total_folders=$(find . -type d -not -path "./_site" -not -path "./.jekyll-cache" | wc -l)
echo "- Total folders: <span class='cb'>$total_folders</span>" >> _includes/code_stats.html

# count lines per type of file ext.
count_lines() {
    local ext=$1
    local name=$2

    local count=$(find . -name "*.$ext" -type f -not -path "./_site/*" -not -path "./.jekyll-cache/*" | xargs cat 2>/dev/null | wc -l)
    local files=$(find . -name "*.$ext" -type f -not -path "./_site/*" -not -path "./.jekyll-cache/*" | wc -l)

    echo "- Number of $name files: <span class='cb'>$files</span> && with <span class='cb'>$count</span> lines of code." >> _includes/code_stats.html
}


count_lines "md" "<span class='md'>.md</span>"
count_lines "html" "<span class='html'>.html</span>"
count_lines "scss" "<span class='scss'>.scss</span>"
count_lines "js" "<span class='js'>.js</span>"
count_lines "yml" "<span class='yml'>.yml</span>"
count_lines "txt" "<span class='cb'>.txt</span>"
count_lines "sql" "<span class='sql'>.sql</span>"
count_lines "sh" "<span class='shell'>.sh</span>"


# for media files
echo "" >> _includes/code_stats.html
echo "## Media Stats" >> _includes/code_stats.html
echo "" >> _includes/code_stats.html

# count media files
count_files() {
    local ext=$1
    local name=$2
    local count=$(find . -iname "*.$ext" -type f -not -path "./_site/*" -not -path "./.jekyll-cache/*" | wc -l)

    echo "- Number of $name: <span class='cb'>$count</span>" >> _includes/code_stats.html
}

count_files "png" "<span class='cb'>PNG</span> images"
count_files "jpg" "<span class='cb'>JPG</span> images"
count_files "jpeg" "<span class='cb'>JPEG</span> images"
count_files "gif" "<span class='cb'>GIF</span> images"
count_files "svg" "<span class='cb'>SVG</span> images"
count_files "webp" "<span class='cb'>WebP</span> images"
count_files "mp4" "<span class='cb'>MP4</span> videos"
count_files "mov" "<span class='cb'>MOV</span> videos"
count_files "mp3" "<span class='cb'>MP3</span> audio files"
count_files "wav" "<span class='cb'>WAV</span> audio files"

# git stats
echo "" >> _includes/code_stats.html
echo "## Git Stats" >> _includes/code_stats.html
echo "" >> _includes/code_stats.html

if [ -d ".git" ]; then
    total_commits=$(git rev-list --count HEAD)
    total_branches=$(git branch -r | wc -l)
    latest_commit_hash=$(git log -1 --format="%H")
    latest_commit_message=$(git log -1 --format="%s")
    latest_commit_date=$(git log -1 --format="%cd")

    echo "- Total <span class='mc'>commits</span>: <span class='cb'>$total_commits</span>" >> _includes/code_stats.html
    echo "- Number of <span class='mc'>branches</span>: <span class='cb'>$total_branches</span>" >> _includes/code_stats.html
    echo "- Latest commit <span class='mc'>hash</span>: <span class='cb'>[$latest_commit_hash](https://github.com/bsod2528/bsod2528.github.io/commit/$latest_commit_hash)</span>" >> _includes/code_stats.html
    echo "- Latest Commit Date: <span class='cb'>$latest_commit_date</span>" >> _includes/code_stats.html
    echo "- Latest commit <span class='mc'>message</span>: <span class='cb'>$latest_commit_message</span>" >> _includes/code_stats.html
else
    echo "- Not a Git repository." >> _includes/code_stats.html
fi

# misc stats lol
echo "" >> _includes/code_stats.html
echo "## Misc Stats" >> _includes/code_stats.html

most_edited_file=$(git log --pretty=format: --name-only | grep -v "^$" | sort | uniq -c | sort -rn | head -1)
most_edited_count=$(echo "$most_edited_file" | awk '{print $1}')
most_edited_name=$(echo "$most_edited_file" | awk '{$1=""; print substr($0,2)}')
echo "- Most edited file: <span class='cb'>$most_edited_name</span> (edited <span class='cb'>$most_edited_count</span> times)" >> _includes/code_stats.html

largest_file=$(find . -type f -not -path "./.git/*" -not -path "./_site/*" -not -path "./.jekyll-cache/*" -exec du -h {} + | sort -rh | head -1 | awk '{print $2}')
largest_file_size=$(du -h "$largest_file" | awk '{print $1}')
echo "- Largest file: <span class='cb'>$largest_file</span> (<span class='cb'>$largest_file_size</span>)" >> _includes/code_stats.html

largest_non_media_file=$(find . -type f \
  -not -path "./_site/*" \
  -not -path "./.jekyll-cache/*" \
  -not -path "./.git/*" \
  -not -name "*.jpg" \
  -not -name "*.jpeg" \
  -not -name "*.png" \
  -not -name "*.gif" \
  -not -name "*.mp4" \
  -not -name "*.mp3" \
  -not -name "*.mov" \
  -not -name "*.wav" \
  -not -name "*.webp" \
  -not -name "*.svg" \
  -exec du -h {} \; | sort -rh | head -n 1 | awk '{print $2}')

largest_non_media_file_size=$(du -h "$largest_non_media_file" | awk '{print $1}')
echo "- Largest non-media file: <span class='cb'>$largest_non_media_file</span> (<span class='cb'>$largest_non_media_file_size</span>)" >> _includes/code_stats.html

smallest_file=$(find . -type f -not -empty -not -path "./.git/*" -not -path "./_site/*" -not -path "./.jekyll-cache/*" -exec du -b {} + | sort -n | head -1 | awk '{print $2}')
smallest_file_size=$(du -h "$smallest_file" | awk '{print $1}')
echo "- Smallest file: <span class='cb'>$smallest_file</span> (<span class='cb'>$smallest_file_size</span>)" >> _includes/code_stats.html

total_size=$(du -sh --exclude=.git --exclude=_site --exclude=.jekyll-cache . | awk '{print $1}')
echo "- Total project size (Excluding .git): <span class='cb'>$total_size</span>" >> _includes/code_stats.html

full_size=$(du -sh . | awk '{print $1}')
echo "- Total project size (Including .git): <span class='cb'>$full_size</span>" >> _includes/code_stats.html

echo "Done! Open 'http://127.0.0.1:4000/pages/stats.html' to see your stats."
