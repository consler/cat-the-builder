.class public final Lorg/catrobat/paintroid/ui/ToastFactory;
.super Ljava/lang/Object;
.source "ToastFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\"\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/ToastFactory;",
        "",
        "()V",
        "currentToast",
        "Landroid/widget/Toast;",
        "cancelToast",
        "",
        "makeText",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "duration",
        "msg",
        "",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/ui/ToastFactory;

.field private static currentToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/ui/ToastFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/ui/ToastFactory;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/ui/ToastFactory;->INSTANCE:Lorg/catrobat/paintroid/ui/ToastFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cancelToast()V
    .locals 1

    .line 31
    sget-object v0, Lorg/catrobat/paintroid/ui/ToastFactory;->currentToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "currentToast"

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    return-void
.end method

.method public static final makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/catrobat/paintroid/ui/ToastFactory;->INSTANCE:Lorg/catrobat/paintroid/ui/ToastFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/ui/ToastFactory;->cancelToast()V

    .line 39
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const-string p1, "makeText(context, resId, duration)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lorg/catrobat/paintroid/ui/ToastFactory;->currentToast:Landroid/widget/Toast;

    if-nez p0, :cond_0

    const-string p0, "currentToast"

    .line 40
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/catrobat/paintroid/ui/ToastFactory;->INSTANCE:Lorg/catrobat/paintroid/ui/ToastFactory;

    invoke-direct {v0}, Lorg/catrobat/paintroid/ui/ToastFactory;->cancelToast()V

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const-string p1, "makeText(context, msg, duration)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lorg/catrobat/paintroid/ui/ToastFactory;->currentToast:Landroid/widget/Toast;

    if-nez p0, :cond_0

    const-string p0, "currentToast"

    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
