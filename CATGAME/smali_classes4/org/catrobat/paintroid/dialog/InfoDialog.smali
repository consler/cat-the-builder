.class public final Lorg/catrobat/paintroid/dialog/InfoDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "InfoDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;,
        Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u00012\u00020\u0002:\u0002\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/InfoDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "()V",
        "onClick",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "DialogType",
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/InfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 37
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/InfoDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/InfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "titleResource"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "drawableResource"

    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "messageResource"

    .line 41
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x104000a

    .line 43
    move-object v1, p0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
