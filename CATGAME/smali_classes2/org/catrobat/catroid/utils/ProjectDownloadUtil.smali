.class public final Lorg/catrobat/catroid/utils/ProjectDownloadUtil;
.super Ljava/lang/Object;
.source "ProjectDownloadUtil.kt"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0005R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/ProjectDownloadUtil;",
        "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
        "()V",
        "fragment",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;",
        "onDownloadFinished",
        "",
        "catrobatProgramName",
        "",
        "url",
        "onDownloadProgress",
        "progress",
        "",
        "onDownloadStarted",
        "string",
        "onUserCanceledDownload",
        "setFragment",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/utils/ProjectDownloadUtil;

.field private static fragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->INSTANCE:Lorg/catrobat/catroid/utils/ProjectDownloadUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "catrobatProgramName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "catrobatProgramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->fragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->refreshData()V

    .line 37
    :cond_0
    return-void
.end method

.method public onDownloadProgress(ILjava/lang/String;)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onUserCanceledDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final setFragment(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/catrobat/catroid/utils/ProjectDownloadUtil;->fragment:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method
