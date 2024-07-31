.class public final synthetic Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$-17Sr95fTN6Ebuxq4rouqG1mSy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/web/CatrobatServerCalls$DownloadProgressCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$-17Sr95fTN6Ebuxq4rouqG1mSy0;->f$0:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$-17Sr95fTN6Ebuxq4rouqG1mSy0;->f$0:Landroid/os/ResultReceiver;

    invoke-static {v0, p1, p2}, Lorg/catrobat/catroid/web/ServerCalls;->lambda$null$1(Landroid/os/ResultReceiver;J)V

    return-void
.end method
