.class public Lorg/catrobat/catroid/formulaeditor/SensorLoudness;
.super Ljava/lang/Object;
.source "SensorLoudness.java"


# static fields
.field private static final MAX_AMP_VALUE:D = 32767.0

.field private static final SCALE_RANGE:D = 100.0

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_INTERVAL:I = 0x32


# instance fields
.field private final handler:Landroid/os/Handler;

.field private lastValue:Ljava/lang/Double;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

.field statusChecker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->lastValue:Ljava/lang/Double;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/formulaeditor/SensorLoudness$1;-><init>(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->statusChecker:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->lastValue:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$102(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;
    .param p1, "x1"    # Ljava/lang/Double;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->lastValue:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/formulaeditor/SensorLoudness;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/SensorLoudness;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getSoundRecorder()Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    return-object v0
.end method

.method public declared-synchronized registerListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)Z
    .locals 4
    .param p1, "listener"    # Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return v1

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->start()V

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->statusChecker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    goto :goto_0

    .line 82
    .end local p0    # "this":Lorg/catrobat/catroid/formulaeditor/SensorLoudness;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "runtimeException":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->TAG:Ljava/lang/String;

    const-string v3, "Could not start recorder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    monitor-exit p0

    return v0

    .line 77
    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "ioException":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->TAG:Ljava/lang/String;

    const-string v3, "Could not start recorder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    monitor-exit p0

    return v0

    .line 89
    .end local v1    # "ioException":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 68
    .end local p1    # "listener":Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSoundRecorder(Lorg/catrobat/catroid/soundrecorder/SoundRecorder;)V
    .locals 0
    .param p1, "soundRecorder"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 113
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 114
    return-void
.end method

.method public declared-synchronized unregisterListener(Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->statusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->stop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_0

    .line 100
    .end local p0    # "this":Lorg/catrobat/catroid/formulaeditor/SensorLoudness;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ioException":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->TAG:Ljava/lang/String;

    const-string v2, "Could not stop recorder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "ioException":Ljava/io/IOException;
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->recorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 106
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/SensorLoudness;->lastValue:Ljava/lang/Double;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_1
    monitor-exit p0

    return-void

    .line 92
    .end local p1    # "listener":Lorg/catrobat/catroid/formulaeditor/SensorCustomEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
