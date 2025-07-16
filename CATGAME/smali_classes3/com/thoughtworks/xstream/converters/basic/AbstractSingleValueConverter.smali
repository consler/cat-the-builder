.class public abstract Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.super Ljava/lang/Object;
.source "AbstractSingleValueConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canConvert(Ljava/lang/Class;)Z
.end method

.method public abstract fromString(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
