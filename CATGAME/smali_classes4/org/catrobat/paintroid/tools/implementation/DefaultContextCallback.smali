.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;
.super Ljava/lang/Object;
.source "DefaultContextCallback.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/ContextCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0012H\u0017J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0012H\u0016J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0012H\u0016J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u0012H\u0016J\u001a\u0010\u001f\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "checkeredBitmapShader",
        "Landroid/graphics/Shader;",
        "getCheckeredBitmapShader",
        "()Landroid/graphics/Shader;",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getDisplayMetrics",
        "()Landroid/util/DisplayMetrics;",
        "orientation",
        "Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;",
        "getOrientation",
        "()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;",
        "scrollTolerance",
        "",
        "getScrollTolerance",
        "()I",
        "getColor",
        "id",
        "getDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "resource",
        "getFont",
        "Landroid/graphics/Typeface;",
        "showNotification",
        "",
        "resId",
        "showNotificationWithDuration",
        "duration",
        "Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;",
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


# instance fields
.field private final checkeredBitmapShader:Landroid/graphics/Shader;

.field private final context:Landroid/content/Context;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final scrollTolerance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    iput-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->checkeredBitmapShader:Landroid/graphics/Shader;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->scrollTolerance:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const-string v0, "context.resources.displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->displayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public getCheckeredBitmapShader()Landroid/graphics/Shader;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->checkeredBitmapShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFont(I)Landroid/graphics/Typeface;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public getOrientation()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    sget-object v0, Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;->LANDSCAPE:Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;->PORTRAIT:Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;

    :goto_0
    return-object v0
.end method

.method public getScrollTolerance()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->scrollTolerance:I

    return v0
.end method

.method public showNotification(I)V
    .locals 1

    .line 60
    sget-object v0, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->SHORT:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V

    return-void
.end method

.method public showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V
    .locals 1

    const-string v0, "duration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;->SHORT:Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 68
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultContextCallback;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/catrobat/paintroid/ui/ToastFactory;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
