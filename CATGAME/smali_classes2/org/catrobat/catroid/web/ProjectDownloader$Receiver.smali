.class final Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;
.super Landroid/os/ResultReceiver;
.source "ProjectDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/web/ProjectDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0083\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;",
        "Landroid/os/ResultReceiver;",
        "projectName",
        "",
        "handler",
        "Landroid/os/Handler;",
        "(Lorg/catrobat/catroid/web/ProjectDownloader;Ljava/lang/String;Landroid/os/Handler;)V",
        "getProjectName",
        "()Ljava/lang/String;",
        "onReceiveResult",
        "",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final projectName:Ljava/lang/String;

.field final synthetic this$0:Lorg/catrobat/catroid/web/ProjectDownloader;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/web/ProjectDownloader;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lorg/catrobat/catroid/web/ProjectDownloader;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "projectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    .line 135
    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getProjectName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    const-string v0, "resultData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 138
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v0}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getCallbackWeakReference$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v2}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getUrl$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->addNewDownloadedProject(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v0}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getQueue$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;->finished(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v0}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getQueue$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->projectName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;->finished(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "progress":I
    iget-object v1, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v1}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getCallbackWeakReference$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/catrobat/catroid/web/ProjectDownloader$Receiver;->this$0:Lorg/catrobat/catroid/web/ProjectDownloader;

    invoke-static {v2}, Lorg/catrobat/catroid/web/ProjectDownloader;->access$getUrl$p(Lorg/catrobat/catroid/web/ProjectDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onDownloadProgress(ILjava/lang/String;)V

    .line 149
    .end local v0    # "progress":I
    :cond_4
    :goto_0
    nop

    .line 150
    return-void
.end method
