.class public final Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;
.super Landroid/os/AsyncTask;
.source "ProjectImportTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;,
        Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0014\u0015B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J%\u0010\u000b\u001a\u00020\u00032\u0016\u0010\u000c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020\r\"\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0014J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\nR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;",
        "Landroid/os/AsyncTask;",
        "Ljava/lang/Void;",
        "",
        "filesToImport",
        "",
        "Ljava/io/File;",
        "(Ljava/util/List;)V",
        "weakListenerReference",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;",
        "doInBackground",
        "args",
        "",
        "([Ljava/lang/Void;)Ljava/lang/Boolean;",
        "onPostExecute",
        "",
        "success",
        "setListener",
        "listener",
        "Companion",
        "ProjectImportListener",
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
.field public static final Companion:Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final filesToImport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private weakListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    .line 64
    const-class v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectImportTask::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "filesToImport"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filesToImport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->filesToImport:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->Companion:Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;

    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->filesToImport:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$Companion;->task(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->onPostExecute(Z)V

    return-void
.end method

.method protected onPostExecute(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->weakListenerReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 56
    .local v0, "listener":Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;->onImportFinished(Z)V

    .line 57
    :cond_2
    return-void
.end method

.method public final setListener(Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;)Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/io/asynctask/ProjectImportTask$ProjectImportListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/asynctask/ProjectImportTask;->weakListenerReference:Ljava/lang/ref/WeakReference;

    .line 46
    return-object p0
.end method
