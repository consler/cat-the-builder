.class public Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractAttributedCharacterIteratorAttributeConverter;
.source "TextAttributeConverter.java"


# static fields
.field static synthetic class$java$awt$font$TextAttribute:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;->class$java$awt$font$TextAttribute:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.awt.font.TextAttribute"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;->class$java$awt$font$TextAttribute:Ljava/lang/Class;

    :cond_0
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractAttributedCharacterIteratorAttributeConverter;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
