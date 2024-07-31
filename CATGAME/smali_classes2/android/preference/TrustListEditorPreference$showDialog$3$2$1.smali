.class final Landroid/preference/TrustListEditorPreference$showDialog$3$2$1;
.super Ljava/lang/Object;
.source "TrustListEditorPreference.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/TrustListEditorPreference$showDialog$3$2;->onShow(Landroid/content/DialogInterface;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Landroid/preference/TrustListEditorPreference$showDialog$3$2;


# direct methods
.method constructor <init>(Landroid/preference/TrustListEditorPreference$showDialog$3$2;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/TrustListEditorPreference$showDialog$3$2$1;->this$0:Landroid/preference/TrustListEditorPreference$showDialog$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://catrob.at/webbricks"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/preference/TrustListEditorPreference$showDialog$3$2$1;->this$0:Landroid/preference/TrustListEditorPreference$showDialog$3$2;

    iget-object v1, v1, Landroid/preference/TrustListEditorPreference$showDialog$3$2;->$this_apply:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    return-void
.end method
