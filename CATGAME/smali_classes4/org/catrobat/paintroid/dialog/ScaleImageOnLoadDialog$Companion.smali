.class public final Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;
.super Ljava/lang/Object;
.source "ScaleImageOnLoadDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;",
        "uri",
        "Landroid/net/Uri;",
        "requestCode",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 56
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/net/Uri;I)Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "requestCode"    # I

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-apply-ScaleImageOnLoadDialog$Companion$newInstance$1":I
    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Uri"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "requestCode"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->setArguments(Landroid/os/Bundle;)V

    .line 60
    nop

    .line 58
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
    .end local v2    # "$i$a$-apply-ScaleImageOnLoadDialog$Companion$newInstance$1":I
    nop

    .line 60
    return-object v0
.end method
