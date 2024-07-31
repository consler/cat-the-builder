.class public Lcom/badlogic/gdx/utils/I18NBundle;
.super Ljava/lang/Object;
.source "I18NBundle.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ROOT_LOCALE:Ljava/util/Locale;

.field private static exceptionOnMissingKey:Z

.field private static simpleFormatter:Z


# instance fields
.field private formatter:Lcom/badlogic/gdx/utils/TextFormatter;

.field private locale:Ljava/util/Locale;

.field private parent:Lcom/badlogic/gdx/utils/I18NBundle;

.field private properties:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z
    .locals 2
    .param p0, "fh"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v0, 0x1

    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 2
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 133
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 157
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method private static createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 9
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 161
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v1, 0x0

    .line 165
    .local v1, "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    move-object v2, p1

    .line 168
    .local v2, "targetLocale":Ljava/util/Locale;
    :cond_0
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    invoke-static {p0, p2, v3, v4, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 176
    .local v5, "bundleLocale":Ljava/util/Locale;
    sget-object v6, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 178
    .local v6, "isBaseBundle":Z
    if-eqz v6, :cond_4

    invoke-virtual {v5, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 188
    move-object v1, v0

    .line 193
    .end local v5    # "bundleLocale":Ljava/util/Locale;
    .end local v6    # "isBaseBundle":Z
    :cond_3
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 195
    .end local v3    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v2, :cond_0

    .line 197
    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 198
    if-eqz v1, :cond_5

    .line 204
    move-object v0, v1

    goto :goto_1

    .line 200
    :cond_5
    new-instance v3, Ljava/util/MissingResourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find bundle for base file handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_6
    :goto_1
    return-object v0

    .line 161
    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v1    # "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v2    # "targetLocale":Ljava/util/Locale;
    :cond_7
    const/4 v0, 0x0

    throw v0
.end method

.method private static getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 265
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 268
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 271
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_4
    sget-object v4, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-object v3
.end method

.method public static getExceptionOnMissingKey()Z
    .locals 1

    .line 104
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return v0
.end method

.method private static getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 292
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getSimpleFormatter()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    return v0
.end method

.method private static loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 4
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "targetLocale"    # Ljava/util/Locale;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v1, 0x0

    .line 321
    .local v1, "reader":Ljava/io/Reader;
    :try_start_0
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 322
    .local v2, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    new-instance v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/I18NBundle;-><init>()V

    move-object v0, v3

    .line 327
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    move-object v1, v3

    .line 328
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v2    # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    nop

    .line 336
    if-eqz v0, :cond_1

    .line 337
    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->setLocale(Ljava/util/Locale;)V

    .line 340
    :cond_1
    return-object v0

    .line 334
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v1    # "reader":Ljava/io/Reader;
    .end local p0    # "baseFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1    # "encoding":Ljava/lang/String;
    .end local p2    # "targetLocale":Ljava/util/Locale;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v1    # "reader":Ljava/io/Reader;
    .restart local p0    # "baseFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1    # "encoding":Ljava/lang/String;
    .restart local p2    # "targetLocale":Ljava/util/Locale;
    :goto_0
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 3
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p3, "candidateIndex"    # I
    .param p4, "baseBundle"    # Lcom/badlogic/gdx/utils/I18NBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;I",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ")",
            "Lcom/badlogic/gdx/utils/I18NBundle;"
        }
    .end annotation

    .line 297
    .local p2, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 298
    .local v0, "targetLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 299
    .local v1, "parent":Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p3, v2, :cond_0

    .line 301
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_0
    if-eqz p4, :cond_1

    sget-object v2, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    return-object p4

    .line 307
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    .line 308
    .local v2, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    if-eqz v2, :cond_2

    .line 309
    iput-object v1, v2, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 310
    return-object v2

    .line 313
    :cond_2
    return-object v1
.end method

.method public static setExceptionOnMissingKey(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 111
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    .line 112
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    .line 419
    new-instance v0, Lcom/badlogic/gdx/utils/TextFormatter;

    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/TextFormatter;-><init>(Ljava/util/Locale;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    .line 420
    return-void
.end method

.method public static setSimpleFormatter(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 97
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 98
    return-void
.end method

.method private static toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 9
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 383
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    sget-object v1, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 385
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "variant":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 389
    .local v5, "emptyLanguage":Z
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 390
    .local v6, "emptyCountry":Z
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 392
    .local v4, "emptyVariant":Z
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v4, :cond_3

    .line 393
    :cond_0
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 394
    if-nez v4, :cond_1

    .line 395
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 396
    :cond_1
    if-nez v6, :cond_2

    .line 397
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 403
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    .end local v4    # "emptyVariant":Z
    .end local v5    # "emptyLanguage":Z
    .end local v6    # "emptyCountry":Z
    :cond_3
    :goto_0
    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4
    .param p1, "placeholder"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    .line 462
    .local v0, "keys":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 467
    :cond_1
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/TextFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 433
    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    if-nez v0, :cond_2

    .line 435
    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    if-nez v1, :cond_1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 436
    :cond_1
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find bundle key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method protected load(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 362
    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/PropertiesUtils;->load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V

    .line 363
    return-void
.end method
