.class public Lcom/thoughtworks/xstream/converters/ConversionException;
.super Lcom/thoughtworks/xstream/converters/ErrorWritingException;
.source "ConversionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
