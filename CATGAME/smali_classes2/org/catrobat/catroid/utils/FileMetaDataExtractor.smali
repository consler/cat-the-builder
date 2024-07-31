.class public final Lorg/catrobat/catroid/utils/FileMetaDataExtractor;
.super Ljava/lang/Object;
.source "FileMetaDataExtractor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static decodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "projectName"    # Ljava/lang/String;

    .line 115
    const-string v0, "%2E"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 117
    const-string v0, "%2A"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 118
    const-string v0, "%7C"

    const-string v1, "|"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 119
    const-string v0, "%5C"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v0, "%3F"

    const-string v1, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 121
    const-string v0, "%3E"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v0, "%3C"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 123
    const-string v0, "%3A"

    const-string v1, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 124
    const-string v0, "%2F"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 125
    const-string v0, "%22"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 126
    const-string v0, "%25"

    const-string v1, "%"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "projectName"    # Ljava/lang/String;

    .line 97
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-string v0, "\""

    const-string v1, "%22"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 102
    const-string v0, "/"

    const-string v1, "%2F"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v0, ":"

    const-string v1, "%3A"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 104
    const-string v0, "<"

    const-string v1, "%3C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 105
    const-string v0, ">"

    const-string v1, "%3E"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 106
    const-string v0, "?"

    const-string v1, "%3F"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string v0, "\\"

    const-string v1, "%5C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string v0, "|"

    const-string v1, "%7C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 109
    const-string v0, "*"

    const-string v1, "%2A"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    const-string v1, "%2E"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 111
    :goto_1
    return-object p0
.end method

.method public static getProjectNames(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "projectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 80
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "code.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    goto :goto_1

    .line 85
    :cond_1
    new-instance v6, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;

    invoke-direct {v6, v5}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;-><init>(Ljava/io/File;)V

    .line 88
    .local v6, "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    :try_start_0
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 89
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->TAG:Ljava/lang/String;

    const-string v9, "Well, that\'s awkward."

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "xmlFile":Ljava/io/File;
    .end local v6    # "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_2
    return-object v0
.end method

.method public static getSizeAsString(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "fileOrDirectory"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {p0}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeOfFileOrDirectoryInByte(Ljava/io/File;)J

    move-result-wide v0

    .line 69
    .local v0, "bytes":J
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSizeOfFileOrDirectoryInByte(Ljava/io/File;)J
    .locals 8
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return-wide v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "contents":[Ljava/io/File;
    if-nez v0, :cond_2

    .line 57
    return-wide v1

    .line 60
    :cond_2
    const-wide/16 v1, 0x0

    .line 61
    .local v1, "size":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 62
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeOfFileOrDirectoryInByte(Ljava/io/File;)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    :goto_1
    add-long/2addr v1, v6

    .line 61
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_4
    return-wide v1
.end method
