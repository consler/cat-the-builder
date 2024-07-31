.class final Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;
.super Ljava/lang/Object;
.source "TrustListEditorPreference.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/TrustListEditorPreference;->showDialog(Landroid/os/Bundle;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/TrustListEditorPreference;


# direct methods
.method constructor <init>(Landroid/preference/TrustListEditorPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;->this$0:Landroid/preference/TrustListEditorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 55
    iget-object v0, p0, Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;->this$0:Landroid/preference/TrustListEditorPreference;

    invoke-virtual {v0}, Landroid/preference/TrustListEditorPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "editText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/TrustListEditorPreference;->setText(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    iget-object v1, p0, Landroid/preference/TrustListEditorPreference$showDialog$mBuilder$1;->this$0:Landroid/preference/TrustListEditorPreference;

    invoke-virtual {v1}, Landroid/preference/TrustListEditorPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/TrustedDomainManager;->setUserTrustList(Ljava/lang/String;)Z

    .line 57
    return-void
.end method
