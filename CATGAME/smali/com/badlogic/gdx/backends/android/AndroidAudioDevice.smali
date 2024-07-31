.class Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;
.super Ljava/lang/Object;
.source "AndroidAudioDevice.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/AudioDevice;


# instance fields
.field private buffer:[S

.field private final isMono:Z

.field private final latency:I

.field private final track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(IZ)V
    .locals 12
    .param p1, "samplingRate"    # I
    .param p2, "isMono"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x400

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    .line 42
    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->isMono:Z

    .line 43
    const/4 v0, 0x4

    const/16 v1, 0xc

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 45
    .local v2, "minSize":I
    new-instance v11, Landroid/media/AudioTrack;

    const/4 v5, 0x3

    if-eqz p2, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object v4, v11

    move v6, p1

    move v9, v2

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v11, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    .line 47
    invoke-virtual {v11}, Landroid/media/AudioTrack;->play()V

    .line 48
    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    div-int v0, v2, v3

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->latency:I

    .line 49
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 55
    return-void
.end method

.method public getLatency()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->latency:I

    return v0
.end method

.method public isMono()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->isMono:Z

    return v0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 95
    return-void
.end method

.method public writeSamples([FII)V
    .locals 6
    .param p1, "samples"    # [F
    .param p2, "offset"    # I
    .param p3, "numSamples"    # I

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    .line 73
    :cond_0
    add-int v0, p2, p3

    .line 74
    .local v0, "bound":I
    move v1, p2

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 75
    aget v3, p1, v1

    .line 76
    .local v3, "fValue":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 77
    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    .line 78
    :cond_2
    const v4, 0x46fffe00    # 32767.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-short v4, v4

    .line 79
    .local v4, "value":S
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    aput-short v4, v5, v2

    .line 74
    .end local v3    # "fValue":F
    .end local v4    # "value":S
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 83
    .local v1, "writtenSamples":I
    :goto_1
    if-eq v1, p3, :cond_4

    .line 84
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->buffer:[S

    sub-int v4, p3, v1

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 85
    :cond_4
    return-void
.end method

.method public writeSamples([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "offset"    # I
    .param p3, "numSamples"    # I

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    .line 65
    .local v0, "writtenSamples":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidAudioDevice;->track:Landroid/media/AudioTrack;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
