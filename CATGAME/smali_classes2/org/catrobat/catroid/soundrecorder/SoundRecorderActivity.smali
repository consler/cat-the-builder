.class public Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "SoundRecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_PERMISSIONS_RECORD_AUDIO:I = 0x191

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

.field private soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

.field private timeRecorderChronometer:Landroid/widget/Chronometer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Lorg/catrobat/catroid/soundrecorder/SoundRecorder;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->stopRecording()V

    return-void
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Landroid/widget/Chronometer;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->timeRecorderChronometer:Landroid/widget/Chronometer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->startRecording()V

    return-void
.end method

.method private setViewsToNotRecordingState()V
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    sget-object v1, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/soundrecorder/RecordButton;->setState(Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;)V

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/soundrecorder/RecordButton;->setImageResource(I)V

    .line 158
    return-void
.end method

.method private setViewsToRecordingState()V
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    sget-object v1, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->RECORD:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/soundrecorder/RecordButton;->setState(Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;)V

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/soundrecorder/RecordButton;->setImageResource(I)V

    .line 134
    return-void
.end method

.method private declared-synchronized startRecording()V
    .locals 4

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;
    :cond_0
    const v0, 0x7f120756

    :try_start_1
    iget-object v1, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->stop()V

    .line 111
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 112
    sget-object v1, Lorg/catrobat/catroid/common/Constants;->SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/catroid/common/Constants;->SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

    const v3, 0x7f120758

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v1, "soundFile":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 117
    invoke-virtual {v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->start()V

    .line 118
    invoke-direct {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setViewsToRecordingState()V

    .end local v1    # "soundFile":Ljava/io/File;
    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Device does not support audio or video format."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_1

    .line 122
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error recording sound (Other recorder running?)."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 119
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error recording sound."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 129
    :goto_1
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRecording()V
    .locals 4

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setViewsToNotRecordingState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->stop()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->soundRecorder:Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    .line 146
    invoke-virtual {v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 148
    .end local p0    # "this":Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error recording sound."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const v1, 0x7f120756

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->stopRecording()V

    .line 99
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 76
    new-instance v6, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v2, 0x191

    const v4, 0x7f120710

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;-><init>(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;ILjava/util/List;ILandroid/view/View;)V

    .line 93
    invoke-virtual {v6, p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->execute(Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120757

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    const v0, 0x7f0a05c9

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/soundrecorder/RecordButton;

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    .line 70
    const v0, 0x7f0a05c8

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->timeRecorderChronometer:Landroid/widget/Chronometer;

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->recordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/soundrecorder/RecordButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 167
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->onBackPressed()V

    .line 165
    const/4 v0, 0x1

    return v0
.end method
