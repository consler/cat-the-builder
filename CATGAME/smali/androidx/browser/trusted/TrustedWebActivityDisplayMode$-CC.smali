.class public final synthetic Landroidx/browser/trusted/TrustedWebActivityDisplayMode$-CC;
.super Ljava/lang/Object;
.source "TrustedWebActivityDisplayMode.java"


# direct methods
.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 34
    const-string v0, "androidx.browser.trusted.displaymode.KEY_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    invoke-direct {v0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    return-object v0

    .line 36
    :cond_0
    invoke-static {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    move-result-object v0

    return-object v0
.end method
