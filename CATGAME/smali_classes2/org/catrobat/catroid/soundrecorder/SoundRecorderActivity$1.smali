.class Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "SoundRecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;ILjava/util/List;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;
    .param p2, "permissionRequestId"    # I
    .param p4, "rationaleString"    # I

    .line 78
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    iput-object p5, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->val$view:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a05c9

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$000(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$000(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Lorg/catrobat/catroid/soundrecorder/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$100(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$200(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Landroid/widget/Chronometer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$300(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    .local v0, "currentPlayingBase":J
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$200(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Landroid/widget/Chronometer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 89
    iget-object v2, p0, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity$1;->this$0:Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-static {v2}, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;->access$200(Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;)Landroid/widget/Chronometer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    .line 92
    .end local v0    # "currentPlayingBase":J
    :cond_1
    :goto_0
    return-void
.end method
