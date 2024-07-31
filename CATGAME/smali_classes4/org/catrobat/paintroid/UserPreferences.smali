.class public Lorg/catrobat/paintroid/UserPreferences;
.super Ljava/lang/Object;
.source "UserPreferences.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/UserPreferences;",
        "",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "(Landroid/content/SharedPreferences;)V",
        "value",
        "",
        "preferenceImageNumber",
        "getPreferenceImageNumber",
        "()I",
        "setPreferenceImageNumber",
        "(I)V",
        "preferenceLikeUsDialogValue",
        "",
        "getPreferenceLikeUsDialogValue",
        "()Z",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "setPreferences",
        "setPreferenceLikeUsDialogValue",
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


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getPreferenceImageNumber()I
    .locals 3

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "imagenumbertag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferenceLikeUsDialogValue()Z
    .locals 3

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "showlikeusdialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public setPreferenceImageNumber(I)V
    .locals 2
    .param p1, "value"    # I

    .line 31
    nop

    .line 34
    nop

    .line 31
    nop

    .line 33
    nop

    .line 31
    nop

    .line 32
    nop

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    const-string v1, "imagenumbertag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method

.method public setPreferenceLikeUsDialogValue()V
    .locals 3

    .line 38
    nop

    .line 41
    nop

    .line 38
    nop

    .line 40
    nop

    .line 38
    nop

    .line 39
    nop

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    const-string v1, "showlikeusdialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method

.method public final setPreferences(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/content/SharedPreferences;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method
