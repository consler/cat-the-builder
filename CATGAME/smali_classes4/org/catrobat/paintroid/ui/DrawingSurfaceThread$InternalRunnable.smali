.class final Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;
.super Ljava/lang/Object;
.source "DrawingSurfaceThread.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;",
        "Ljava/lang/Runnable;",
        "(Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;)V",
        "run",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 79
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread$InternalRunnable;->this$0:Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;->access$internalRun(Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;)V

    .line 80
    return-void
.end method
