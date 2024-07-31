.class public Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# static fields
.field public static final RECORDING_EXTENSION:Ljava/lang/String; = ".m4a"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isRecording:Z

.field private path:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->path:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording:Z

    return v0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "soundFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Path to file could not be created."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 58
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 59
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 60
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 61
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 63
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 64
    iput-boolean v3, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 65
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/IllegalStateException;
    throw v2
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->TAG:Ljava/lang/String;

    const-string v2, "Note that a RuntimeException is intentionally thrown to the application, if no valid audio/video data has been received when stop() is called. This happens if stop() is called immediately after start(). The failure lets the application take action accordingly to clean up the output file (delete the output file, for instance), since the output file is not properly constructed when this happens."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording:Z

    .line 87
    return-void
.end method
