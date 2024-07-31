.class public Lar/com/hjg/pngj/chunks/PngBadCharsetException;
.super Lar/com/hjg/pngj/PngjException;
.source "PngBadCharsetException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 9
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
