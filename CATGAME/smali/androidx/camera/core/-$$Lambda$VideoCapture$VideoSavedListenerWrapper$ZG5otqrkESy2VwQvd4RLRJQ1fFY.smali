.class public final synthetic Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iput p2, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$1:I

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iget v1, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$1:I

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;->f$3:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->lambda$onError$1$VideoCapture$VideoSavedListenerWrapper(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
