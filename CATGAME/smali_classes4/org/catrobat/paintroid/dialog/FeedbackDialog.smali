.class public final Lorg/catrobat/paintroid/dialog/FeedbackDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "FeedbackDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0017\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/FeedbackDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public static synthetic $r8$lambda$yjZFIr-Je2lqVEIqIJTI87YjHVE(Lorg/catrobat/paintroid/dialog/FeedbackDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/FeedbackDialog;->onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/FeedbackDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private static final onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/FeedbackDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/FeedbackDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 31
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/FeedbackDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 32
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_feedback:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_rate_us_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 34
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_ok:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/FeedbackDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/FeedbackDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/FeedbackDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026) }\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
