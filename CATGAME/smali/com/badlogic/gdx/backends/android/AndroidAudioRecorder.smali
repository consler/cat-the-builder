.class public Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;
.super Ljava/lang/Object;
.source "AndroidAudioRecorder.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/AudioRecorder;


# instance fields
.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(IZ)V
    .locals 9
    .param p1, "samplingRate"    # I
    .param p2, "isMono"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    .line 34
    .local v0, "channelConfig":I
    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 35
    .local v7, "minBufferSize":I
    new-instance v8, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v1, v8

    move v3, p1

    move v4, v0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 37
    invoke-virtual {v8}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 40
    return-void

    .line 38
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unable to initialize AudioRecorder.\nDo you have the RECORD_AUDIO permission?"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 46
    return-void
.end method

.method public read([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "offset"    # I
    .param p3, "numSamples"    # I

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "read":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 52
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioRecorder;->recorder:Landroid/media/AudioRecord;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
