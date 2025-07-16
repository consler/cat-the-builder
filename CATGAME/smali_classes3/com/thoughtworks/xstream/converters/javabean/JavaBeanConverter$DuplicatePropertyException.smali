.class public Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;
.super Lcom/thoughtworks/xstream/converters/ConversionException;
.source "JavaBeanConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicatePropertyException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Duplicate property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v0, "property"

    .line 193
    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
