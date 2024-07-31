.class public abstract Lcom/huawei/hms/utils/ResourceLoaderUtil;
.super Ljava/lang/Object;
.source "ResourceLoaderUtil.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .locals 3

    .line 71
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "anim"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .locals 3

    .line 75
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "color"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 59
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdId(Ljava/lang/String;)I
    .locals 3

    .line 55
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .locals 3

    .line 51
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "layout"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 3

    .line 67
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .locals 3

    .line 63
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    const-string v2, "style"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .line 39
    sget-object v0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->a:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/huawei/hms/utils/ResourceLoaderUtil;->b:Ljava/lang/String;

    .line 48
    return-void
.end method
