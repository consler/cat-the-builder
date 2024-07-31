.class final Lcom/squareup/picasso/LruCache$BitmapAndSize;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapAndSize"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final byteCount:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "byteCount"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/squareup/picasso/LruCache$BitmapAndSize;->bitmap:Landroid/graphics/Bitmap;

    .line 115
    iput p2, p0, Lcom/squareup/picasso/LruCache$BitmapAndSize;->byteCount:I

    .line 116
    return-void
.end method
