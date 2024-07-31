.class public final Lorg/catrobat/catroid/utils/JsonRegexExtractor;
.super Ljava/lang/Object;
.source "JsonRegexExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJsonParserRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\\s*:\\s*\"?((?<=\")(\\\\\"|[^\"])*(?=\")|(?<!\")([+-]?(0|[1-9]\\d*)(\\.\\d+)?([eE][+-]?\\d+)?|(true|false|null)|\\{[^{]*?\\}|\\[[^\\[]*?\\])(?!\"))\"?(?=\\s*[,\\]}])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
