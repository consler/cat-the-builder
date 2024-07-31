.class final Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;
.super Ljava/lang/Object;
.source "ProjectUtils.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectUtils;->showWarningForSuspiciousBricksOnce(Landroid/content/Context;)V
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
        "dialog",
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
.field final synthetic $projectUrl:Ljava/lang/String;

.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;->$projectUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 149
    nop

    .line 152
    nop

    .line 149
    nop

    .line 151
    nop

    .line 149
    nop

    .line 150
    nop

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUtils$showWarningForSuspiciousBricksOnce$1;->$projectUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    return-void
.end method
