# SpigotWorldExtractor

Batch files for bulk-extracting the world of spigot / paper servers.

# How to use

You can drag and drop multiple server folders over the batch file. The extracted world folder gets copied to a specific destination folder. The destination folder is different in each batch file. This is the only difference between them.

There are three different batch files provided:

1. SpigotWorldExtractor_To_Minecraft: Copies the extracted world to %appdata%/.minecraft/saves
2. SpigotWorldExtractor_To_Source: Copies the extracted world to the same folder, where the server folder is located
3. SpigotWorldExtractor_To_Here: Copies the extracted folder to the same folder, where the batch file is located

# What does the script?

The scripts functionality implements the [migration guidelines on how to migrate from a paper server to a vanilla one](https://docs.papermc.io/paper/migration#migrating-from-paper).
