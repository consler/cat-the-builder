.class final Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FileOperations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/FileOperationsKt;->loadBitmapByName(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0086@"
    }
    d2 = {
        "loadBitmapByName",
        "",
        "context",
        "Landroid/content/Context;",
        "imageName",
        "",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "Landroid/graphics/Bitmap;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.paintroid.colorpicker.FileOperationsKt"
    f = "FileOperations.kt"
    i = {
        0x0
    }
    l = {
        0x37
    }
    m = "loadBitmapByName"
    n = {
        "bitmap"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->result:Ljava/lang/Object;

    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt;->loadBitmapByName(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
