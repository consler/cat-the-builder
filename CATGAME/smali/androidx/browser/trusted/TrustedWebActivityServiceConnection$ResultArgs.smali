.class Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;
.super Ljava/lang/Object;
.source "TrustedWebActivityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultArgs"
.end annotation


# instance fields
.field public final success:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;->success:Z

    .line 229
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 232
    const-string v0, "android.support.customtabs.trusted.NOTIFICATION_SUCCESS"

    invoke-static {p0, v0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;->ensureBundleContains(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 233
    new-instance v1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;-><init>(Z)V

    return-object v1
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "args":Landroid/os/Bundle;
    iget-boolean v1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ResultArgs;->success:Z

    const-string v2, "android.support.customtabs.trusted.NOTIFICATION_SUCCESS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    return-object v0
.end method
