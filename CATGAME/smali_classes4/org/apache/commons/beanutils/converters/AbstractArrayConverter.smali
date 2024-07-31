.class public abstract Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.super Ljava/lang/Object;
.source "AbstractArrayConverter.java"

# interfaces
.implements Lorg/apache/commons/beanutils/Converter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_DEFAULT:Ljava/lang/Object;

.field protected static strings:[Ljava/lang/String;


# instance fields
.field protected defaultValue:Ljava/lang/Object;

.field protected useDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->NO_DEFAULT:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->strings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->useDefault:Z

    .line 64
    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->useDefault:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->useDefault:Z

    .line 78
    sget-object v1, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->NO_DEFAULT:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->useDefault:Z

    goto :goto_0

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->defaultValue:Ljava/lang/Object;

    .line 82
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;->useDefault:Z

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected parseElements(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "svalue"    # Ljava/lang/String;

    .line 164
    if-eqz p1, :cond_4

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StreamTokenizer;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v0, "st":Ljava/io/StreamTokenizer;
    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 180
    const/16 v1, 0x39

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 181
    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 182
    const/16 v4, 0x2d

    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 184
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 185
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "list":Ljava/util/ArrayList;
    :goto_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    .line 191
    .local v2, "ttype":I
    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    if-lez v2, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 195
    nop

    .line 203
    .end local v2    # "ttype":I
    return-object v1

    .line 197
    .restart local v2    # "ttype":I
    :cond_2
    new-instance v3, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered token of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    .end local p1    # "svalue":Ljava/lang/String;
    throw v3

    .line 193
    .restart local p1    # "svalue":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v3, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2    # "ttype":I
    goto :goto_0

    .line 205
    .end local v0    # "st":Ljava/io/StreamTokenizer;
    .end local v1    # "list":Ljava/util/ArrayList;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v0, 0x0

    throw v0
.end method
