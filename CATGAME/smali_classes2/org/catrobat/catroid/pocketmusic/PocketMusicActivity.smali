.class public Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "PocketMusicActivity.java"


# static fields
.field public static final ABSOLUTE_FILE_PATH:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private fastScroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

.field private midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

.field private project:Lorg/catrobat/catroid/pocketmusic/note/Project;

.field private tactScroller:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private createEmptyProject()Lorg/catrobat/catroid/pocketmusic/note/Project;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create dir MIDI folder at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/Project;

    const v1, 0x7f120644

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)V

    .line 134
    .local v0, "project":Lorg/catrobat/catroid/pocketmusic/note/Project;
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/note/Track;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/Track;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 136
    .local v1, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    const v2, 0x7f120645

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->putTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;)V

    .line 137
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MUS-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".midi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/pocketmusic/note/Project;->setFile(Ljava/io/File;)V

    .line 139
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 8

    .line 144
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 148
    .local v0, "receivedSoundInfoThroughIntent":Z
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->tactScroller:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 149
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getTrackGrid()Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGridToTrackConverter;->convertTrackGridToTrack(Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;I)Lorg/catrobat/catroid/pocketmusic/note/Track;

    move-result-object v1

    .line 151
    .local v1, "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 152
    new-instance v2, Lorg/catrobat/catroid/common/SoundInfo;

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 153
    .local v2, "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    :try_start_0
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;-><init>()V

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SoundController;->delete(Lorg/catrobat/catroid/common/SoundInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto/16 :goto_3

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 160
    .end local v2    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/Track;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrackNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    .local v4, "trackName":Ljava/lang/String;
    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v5, v4, v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->putTrack(Ljava/lang/String;Lorg/catrobat/catroid/pocketmusic/note/Track;)V

    .line 163
    .end local v4    # "trackName":Ljava/lang/String;
    goto :goto_0

    .line 165
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/common/SoundInfo;

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v5}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 166
    .restart local v2    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    new-instance v3, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;

    invoke-direct {v3}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;-><init>()V

    .line 169
    .local v3, "projectToMidiConverter":Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;
    :try_start_1
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->writeProjectAsMidi(Lorg/catrobat/catroid/pocketmusic/note/Project;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_2

    .line 170
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    .line 171
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot save file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    if-nez v0, :cond_2

    .line 175
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    .line 179
    .end local v0    # "receivedSoundInfoThroughIntent":Z
    .end local v1    # "track":Lorg/catrobat/catroid/pocketmusic/note/Track;
    .end local v2    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v3    # "projectToMidiConverter":Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;
    :cond_2
    :goto_3
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->finish()V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sounds"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/midi/ProjectToMidiConverter;->midiFolder:Ljava/io/File;

    .line 74
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    const v0, 0x7f120644

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    new-instance v2, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;

    invoke-direct {v2}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;-><init>()V

    .line 85
    .local v2, "converter":Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 88
    .local v1, "soundFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;->convertMidiFileToProject(Ljava/io/File;)Lorg/catrobat/catroid/pocketmusic/note/Project;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 89
    invoke-virtual {v3, v0}, Lorg/catrobat/catroid/pocketmusic/note/Project;->setName(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/pocketmusic/note/Project;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/pocketmusic/note/midi/MidiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 91
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->createEmptyProject()Lorg/catrobat/catroid/pocketmusic/note/Project;

    move-result-object v4

    iput-object v4, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    goto :goto_1

    .line 94
    :catch_2
    move-exception v4

    .line 95
    .local v4, "ioException":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->finish()V

    .line 99
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "soundFile":Ljava/io/File;
    .end local v2    # "converter":Lorg/catrobat/catroid/pocketmusic/note/midi/MidiToProjectConverter;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ioException":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 101
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->createEmptyProject()Lorg/catrobat/catroid/pocketmusic/note/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 105
    goto :goto_2

    .line 102
    :catch_3
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->finish()V

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->setContentView(I)V

    .line 109
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    .local v0, "content":Landroid/view/ViewGroup;
    const v1, 0x7f0a0617

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 112
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const v2, 0x7f08020e

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setLogo(I)V

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    const v1, 0x7f0a05f0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->tactScroller:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 117
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    const v3, 0x7f120645

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getTrack(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/Track;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    .line 118
    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v3

    .line 117
    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setTrack(Lorg/catrobat/catroid/pocketmusic/note/Track;I)V

    .line 120
    const v1, 0x7f0a037f

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    iput-object v1, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->fastScroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 121
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->tactScroller:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setRecyclerView(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V

    .line 123
    new-instance v1, Lorg/catrobat/catroid/pocketmusic/ScrollController;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->tactScroller:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->project:Lorg/catrobat/catroid/pocketmusic/note/Project;

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/note/Project;->getBeatsPerMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ScrollController;-><init>(Landroid/view/ViewGroup;Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;I)V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 184
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onResume()V

    .line 185
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->start()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    const/4 v1, 0x0

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/Project;->DEFAULT_INSTRUMENT:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setInstrument(BLorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 190
    :goto_0
    return-void
.end method
