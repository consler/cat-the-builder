.class public Lorg/catrobat/paintroid/UserPreferences;
.super Ljava/lang/Object;
.source "UserPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/UserPreferences$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\r8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u000f\"\u0004\u0008\u0012\u0010\u0013R$\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u0004\u00a8\u0006\u001d"
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
        "preferenceZoomWindowEnabled",
        "getPreferenceZoomWindowEnabled",
        "setPreferenceZoomWindowEnabled",
        "(Z)V",
        "preferenceZoomWindowZoomPercentage",
        "getPreferenceZoomWindowZoomPercentage",
        "setPreferenceZoomWindowZoomPercentage",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "setPreferences",
        "setPreferenceLikeUsDialogValue",
        "",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/UserPreferences$Companion;

.field public static final initialZoomPercent:I = 0x64


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/UserPreferences$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/UserPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/UserPreferences;->Companion:Lorg/catrobat/paintroid/UserPreferences$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getPreferenceImageNumber()I
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "imagenumbertag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreferenceLikeUsDialogValue()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "showlikeusdialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferenceZoomWindowEnabled()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomwindowenabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferenceZoomWindowZoomPercentage()I
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomwindowzoompercentage"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public setPreferenceImageNumber(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imagenumbertag"

    .line 36
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreferenceLikeUsDialogValue()V
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showlikeusdialog"

    const/4 v2, 0x1

    .line 63
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreferenceZoomWindowEnabled(Z)V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoomwindowenabled"

    .line 44
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreferenceZoomWindowZoomPercentage(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoomwindowzoompercentage"

    .line 56
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPreferences(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/catrobat/paintroid/UserPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method
