.class public final Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;
.super Ljava/lang/Object;
.source "OverwriteDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/OverwriteDialog;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;",
        "",
        "()V",
        "IS_EXPORT",
        "",
        "PERMISSION",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/OverwriteDialog;",
        "permissionCode",
        "",
        "isExport",
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 62
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(IZ)Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    .locals 6
    .param p1, "permissionCode"    # I
    .param p2, "isExport"    # Z

    .line 67
    new-instance v0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-apply-OverwriteDialog$Companion$newInstance$1":I
    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "permission"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isExport"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 69
    nop

    .line 67
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    .end local v2    # "$i$a$-apply-OverwriteDialog$Companion$newInstance$1":I
    nop

    .line 69
    return-object v0
.end method
