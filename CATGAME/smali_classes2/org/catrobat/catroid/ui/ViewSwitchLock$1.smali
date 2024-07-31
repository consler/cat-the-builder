.class Lorg/catrobat/catroid/ui/ViewSwitchLock$1;
.super Ljava/lang/Object;
.source "ViewSwitchLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ViewSwitchLock;->tryLock()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ViewSwitchLock;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ViewSwitchLock;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ViewSwitchLock;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock$1;->this$0:Lorg/catrobat/catroid/ui/ViewSwitchLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/catrobat/catroid/ui/ViewSwitchLock;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "interruptedException":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ViewSwitchLock$1;->this$0:Lorg/catrobat/catroid/ui/ViewSwitchLock;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ViewSwitchLock;->unlock()V

    .line 54
    return-void
.end method
