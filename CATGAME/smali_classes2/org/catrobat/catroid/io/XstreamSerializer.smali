.class public final Lorg/catrobat/catroid/io/XstreamSerializer;
.super Ljava/lang/Object;
.source "XstreamSerializer.java"


# static fields
.field private static final PROGRAM_NAME_END_TAG:Ljava/lang/String; = "</programName>"

.field private static final PROGRAM_NAME_START_TAG:Ljava/lang/String; = "<programName>"

.field private static final TAG:Ljava/lang/String;

.field private static final XML_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?>\n"

.field private static instance:Lorg/catrobat/catroid/io/XstreamSerializer;


# instance fields
.field private loadSaveLock:Ljava/util/concurrent/locks/Lock;

.field private xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    const-class v0, Lorg/catrobat/catroid/io/XstreamSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    .line 314
    const-class v0, Lorg/catrobat/catroid/content/Project;

    const-class v1, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 315
    return-void
.end method

.method private cleanUpTmpCodeFile(Ljava/io/File;)V
    .locals 5
    .param p1, "projectDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/exceptions/LoadingProjectException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 856
    new-instance v0, Ljava/io/File;

    const-string v1, "tmp_code.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 857
    .local v0, "tmpXmlFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "code.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 860
    .local v1, "actualXmlFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 865
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/exceptions/LoadingProjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code.xml did not exist. But wait, renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed too."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/exceptions/LoadingProjectException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tmpXmlFile":Ljava/io/File;
    .end local v1    # "actualXmlFile":Ljava/io/File;
    .end local p1    # "projectDir":Ljava/io/File;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .restart local v0    # "tmpXmlFile":Ljava/io/File;
    .restart local v1    # "actualXmlFile":Ljava/io/File;
    .restart local p1    # "projectDir":Ljava/io/File;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 872
    throw v2
.end method

.method public static extractDefaultSceneNameFromXml(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "projectDir"    # Ljava/io/File;

    .line 889
    new-instance v0, Ljava/io/File;

    const-string v1, "code.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 891
    .local v0, "xmlFile":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/utils/StringFinder;

    invoke-direct {v1}, Lorg/catrobat/catroid/utils/StringFinder;-><init>()V

    .line 894
    .local v1, "stringFinder":Lorg/catrobat/catroid/utils/StringFinder;
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v3}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "xml":Ljava/lang/String;
    const-string v4, "<scenes>\\s*<scene>\\s*<name>"

    const-string v5, "</name>"

    invoke-virtual {v1, v3, v4, v5}, Lorg/catrobat/catroid/utils/StringFinder;->findBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 896
    return-object v2

    .line 898
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/StringFinder;->getResult()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 900
    .end local v3    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 901
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v3    # "e":Ljava/io/IOException;
    return-object v2
.end method

.method public static getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;
    .locals 1

    .line 318
    sget-object v0, Lorg/catrobat/catroid/io/XstreamSerializer;->instance:Lorg/catrobat/catroid/io/XstreamSerializer;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lorg/catrobat/catroid/io/XstreamSerializer;

    invoke-direct {v0}, Lorg/catrobat/catroid/io/XstreamSerializer;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/io/XstreamSerializer;->instance:Lorg/catrobat/catroid/io/XstreamSerializer;

    .line 321
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/io/XstreamSerializer;->instance:Lorg/catrobat/catroid/io/XstreamSerializer;

    return-object v0
.end method

.method private static getXMLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceName"    # Ljava/lang/String;

    .line 729
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    invoke-virtual {v0, p0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 730
    const-string v0, "<string>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 731
    const-string v0, "</string>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 732
    return-object p0
.end method

.method private prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .param p1, "projectClass"    # Ljava/lang/Class;
    .param p2, "sceneClass"    # Ljava/lang/Class;

    .line 325
    new-instance v0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    new-instance v3, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    invoke-direct {v3}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;-><init>()V

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    .line 328
    const-string v1, "org.catrobat.catroid.**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->allowTypesByWildcard([Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 331
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 333
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 334
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/XmlHeader;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 335
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/Setting;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 336
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserVariableBrickWithFormula;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 337
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserListBrick;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 338
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 339
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 340
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickLabel;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->processAnnotations(Ljava/lang/Class;)V

    .line 342
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamConcurrentFormulaHashMapConverter;

    invoke-direct {v1}, Lorg/catrobat/catroid/io/XStreamConcurrentFormulaHashMapConverter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 343
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamUserDataHashMapConverter;

    invoke-direct {v1}, Lorg/catrobat/catroid/io/XStreamUserDataHashMapConverter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamUserVariableConverter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    .line 345
    invoke-virtual {v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getClassLoaderReference()Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/io/XStreamUserVariableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 344
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 346
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamFormulaElementConverter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/io/XStreamFormulaElementConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 348
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamBrickConverter;

    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/io/XStreamBrickConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 349
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamScriptConverter;

    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/io/XStreamScriptConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 350
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamSpriteConverter;

    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/io/XStreamSpriteConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 351
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    new-instance v1, Lorg/catrobat/catroid/io/XStreamSettingConverter;

    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/io/XStreamSettingConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 353
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-string v1, "originalWidth"

    invoke-virtual {v0, p2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-string v1, "originalHeight"

    invoke-virtual {v0, p2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/Sprite;

    const-string v2, "userBricks"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    const-string v2, "userBrickVariableList"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/CameraBrick;

    const-string v2, "spinnerValues"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/FlashBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;

    const-string v2, "nfcTagNdefDefaultType"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SpeakAndWaitBrick;

    const-string v2, "speechFile"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SpeakAndWaitBrick;

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;

    const-string v2, "spinnerValue"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ShowTextBrick;

    const-string v2, "userVariableName"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    const-string v2, "formulaList"

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    const-string v3, "userDataList"

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    const-string v3, "type"

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/StartScript;

    const-string v3, "isUserScript"

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenScript;

    const-string v3, "action"

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    const-string v3, "receivedMessage"

    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/common/LookData;

    const-string v2, "look"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 392
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/common/SoundInfo;

    const-string v2, "sound"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 393
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/common/NfcTagData;

    const-string v2, "nfcTag"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 394
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const-string v2, "userVariable"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 395
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    const-string v2, "userList"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 397
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/Script;

    const-string v2, "script"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 398
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/Sprite;

    const-string v3, "object"

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 399
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 400
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 402
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/StartScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 403
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenClonedScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 404
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 405
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenConditionScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 406
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 407
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 408
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 409
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenTouchDownScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 410
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 411
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 412
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/EmptyScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 414
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AddItemToUserListBrick;

    const-string v3, "brick"

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 415
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AskBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 416
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AskSpeechBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 417
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 418
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 419
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/BroadcastWaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 420
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeBrightnessByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 421
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeColorByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 422
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeTransparencyByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 423
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeSizeByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 424
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 425
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeTempoByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 426
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeVolumeByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 427
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeXByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 428
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 429
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ClearBackgroundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 430
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ClearGraphicEffectBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 431
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ClearUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 432
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/CloneBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 433
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ComeToFrontBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 434
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DeleteItemOfUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 435
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DeleteThisCloneBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 436
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 437
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 438
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 439
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/HideBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 440
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 442
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 443
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfLogicElseBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 444
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfLogicEndBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 445
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 446
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfThenLogicEndBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 448
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 449
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 450
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ReportBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 451
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 452
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/InsertItemIntoUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 453
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/FlashBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 454
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 455
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/CameraBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 456
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorMoveBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 457
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 458
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 459
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoNxtPlayToneBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 460
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LoopEndBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 461
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LoopEndlessBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 462
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LookRequestBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 463
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PaintNewLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 464
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/EditLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 465
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DeleteLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 466
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/CopyLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 467
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/BackgroundRequestBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 468
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/MoveNStepsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 469
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/NextLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 470
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/NoteBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 471
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PenDownBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 472
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PenUpBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 473
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 474
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/GoToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 475
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 476
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 477
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PauseForBeatsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 478
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 479
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PointInDirectionBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 480
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PointToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 481
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PreviousLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 482
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RepeatBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 483
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RepeatUntilBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 484
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ForVariableFromToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 485
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ForItemInUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 486
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ReplaceItemInUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 487
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 488
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 489
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBrightnessBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 490
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetCameraFocusPointBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 491
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetColorBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 492
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetTransparencyBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 493
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 494
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetLookByIndexBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 495
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 496
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 497
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundAndWaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 498
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 499
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetInstrumentBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 500
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 501
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 502
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 503
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetPenSizeBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 504
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 505
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetSizeToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 506
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 507
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetVolumeToBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 508
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetXBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 509
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetYBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 510
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ShowBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 511
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ShowTextBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 512
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SpeakBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 513
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SpeakAndWaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 514
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 515
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StampBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 516
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StopSoundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 517
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StopAllSoundsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 518
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 519
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 520
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 521
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 522
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SayForBubbleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 523
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 524
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnRightBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 525
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/VibrationBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 526
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 527
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WaitUntilBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 528
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 529
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 530
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenBackgroundChangesBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 531
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenStartedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 532
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenClonedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 533
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WriteVariableOnDeviceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 534
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ReadVariableFromFileBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 535
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WriteListOnDeviceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 536
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ReadVariableFromDeviceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 537
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WriteVariableToFileBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 538
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ReadListFromDeviceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 539
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 540
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WebRequestBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 541
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StoreCSVIntoUserListBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 542
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ResetTimerBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 543
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 545
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 546
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 548
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 549
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneTakeOffLandBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 550
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveForwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 551
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveBackwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 552
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveUpBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 553
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveDownBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 554
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveLeftBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 555
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneMoveRightBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 556
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneTurnLeftBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 557
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 558
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneSwitchCameraBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 559
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneEmergencyBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 561
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 562
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveForwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 563
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 564
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 565
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 566
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 568
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoEv3PlayToneBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 569
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorMoveBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 570
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorStopBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 571
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 573
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 574
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ArduinoSendDigitalValueBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 576
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 577
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RaspiIfLogicBeginBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 578
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 580
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 581
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenGamepadButtonBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 583
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AssertEqualsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 584
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/FinishStageBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 585
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AssertUserListsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 586
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ExitStageBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 587
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ParameterizedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 588
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ParameterizedEndBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 590
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/OpenUrlBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 591
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TapAtBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 592
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TapForBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 593
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TouchAndSlideBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 594
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/DroneFlipBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 595
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoAnimationsBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 596
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoJumpHighBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 597
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoJumpLongBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 598
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveBackwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 599
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoMoveForwardBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 600
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoNoSoundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 601
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateLeftBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 602
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoRotateRightBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 603
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoSoundBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 604
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoTakingPictureBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 605
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/JumpingSumoTurnBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 606
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/LegoEv3MotorTurnAngleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 607
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetTextBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 608
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ShowTextColorSizeAlignmentBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 609
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StitchBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 610
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/RunningStitchBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 611
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/StopRunningStitchBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 612
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ZigZagStitchBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 613
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TripleStitchBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 614
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 615
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SewUpBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 616
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WriteEmbroideryToFileBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 617
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WaitTillIdleBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 618
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenRaspiPinChangedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 619
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenTouchDownBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 621
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 622
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 624
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetBounceBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 625
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetFrictionBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 626
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 627
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetMassBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 628
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 629
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetVelocityBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 630
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 631
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/TurnRightSpeedBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 633
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/LegoNXTSetting;

    const-string v2, "setting"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 634
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/LegoNXTSetting$NXTPort;

    const-string v4, "nxtPort"

    invoke-virtual {v0, v4, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 636
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/LegoEV3Setting;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 637
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/LegoEV3Setting$EV3Port;

    const-string v2, "ev3Port"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 639
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 640
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 641
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    const-class v1, Lorg/catrobat/catroid/content/bricks/SetParticleColorBrick;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 642
    return-void
.end method

.method public static renameProject(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .param p0, "xmlFile"    # Ljava/io/File;
    .param p1, "destinationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "currentXml":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/utils/StringFinder;

    invoke-direct {v1}, Lorg/catrobat/catroid/utils/StringFinder;-><init>()V

    .line 704
    .local v1, "stringFinder":Lorg/catrobat/catroid/utils/StringFinder;
    const-string v2, "<programName>"

    const-string v3, "</programName>"

    invoke-virtual {v1, v0, v2, v3}, Lorg/catrobat/catroid/utils/StringFinder;->findBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 705
    return v5

    .line 708
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/utils/StringFinder;->getResult()Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "sourceName":Ljava/lang/String;
    invoke-static {p1}, Lorg/catrobat/catroid/io/XstreamSerializer;->getXMLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 711
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 712
    return v7

    .line 715
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "sourceProjectNameTag":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "destinationProjectNameTag":Ljava/lang/String;
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "newXml":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 720
    sget-object v7, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    const-string v8, "Cannot find projectNameTag in code.xml"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v5

    .line 724
    :cond_2
    invoke-static {p0, v3}, Lorg/catrobat/catroid/io/StorageOperations;->writeToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    return v7

    .line 698
    .end local v0    # "currentXml":Ljava/lang/String;
    .end local v1    # "stringFinder":Lorg/catrobat/catroid/utils/StringFinder;
    .end local v2    # "destinationProjectNameTag":Ljava/lang/String;
    .end local v3    # "newXml":Ljava/lang/String;
    .end local v4    # "sourceName":Ljava/lang/String;
    .end local v6    # "sourceProjectNameTag":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setFileReferences(Lorg/catrobat/catroid/content/Project;)V
    .locals 10
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 736
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 737
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "images"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    .local v2, "imageDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "sounds"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 740
    .local v3, "soundDir":Ljava/io/File;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Sprite;

    .line 741
    .local v5, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 742
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/LookData;

    .line 743
    .local v7, "lookData":Lorg/catrobat/catroid/common/LookData;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/LookData;->getXstreamFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 745
    .local v8, "lookFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 746
    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/common/LookData;->setFile(Ljava/io/File;)V

    goto :goto_3

    .line 748
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 750
    .end local v7    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v8    # "lookFile":Ljava/io/File;
    :goto_3
    goto :goto_2

    .line 752
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :cond_1
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 753
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/SoundInfo;

    .line 754
    .local v7, "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/SoundInfo;->getXstreamFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 756
    .local v8, "soundFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 757
    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/common/SoundInfo;->setFile(Ljava/io/File;)V

    goto :goto_5

    .line 759
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 761
    .end local v7    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v8    # "soundFile":Ljava/io/File;
    :goto_5
    goto :goto_4

    .line 762
    .end local v5    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :cond_3
    goto :goto_1

    .line 763
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v2    # "imageDir":Ljava/io/File;
    .end local v3    # "soundDir":Ljava/io/File;
    :cond_4
    goto/16 :goto_0

    .line 764
    :cond_5
    return-void
.end method

.method private unnecessaryChanges(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "currentXml"    # Ljava/lang/String;
    .param p2, "previousXml"    # Ljava/lang/String;

    .line 766
    const-string v0, "<formula category=\".*Y.*\">"

    .line 767
    .local v0, "formulaYRegex":Ljava/lang/String;
    const-string v1, "<formula category=\".*X.*\">"

    .line 768
    .local v1, "formulaXRegex":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 769
    .local v3, "formulaYPattern":Ljava/util/regex/Pattern;
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 770
    .local v2, "formulaXPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 771
    .local v4, "currentFormulaYMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 772
    .local v5, "previousFormulaXMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 773
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 774
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 775
    const/4 v6, 0x1

    return v6

    .line 777
    :cond_0
    return v7
.end method


# virtual methods
.method public getXmlAsStringFromProject(Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;
    .locals 3
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 876
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 879
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 880
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "xmlString":Ljava/lang/String;
    const-class v1, Lorg/catrobat/catroid/content/Project;

    const-class v2, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    iget-object v1, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 884
    nop

    .line 885
    return-object v0

    .line 883
    .end local v0    # "xmlString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 884
    throw v0
.end method

.method public getXstream()Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;
    .locals 1

    .line 908
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    return-object v0
.end method

.method public loadProject(Ljava/io/File;Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;
    .locals 6
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/catrobat/catroid/exceptions/LoadingProjectException;
        }
    .end annotation

    .line 645
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/XstreamSerializer;->cleanUpTmpCodeFile(Ljava/io/File;)V

    .line 647
    new-instance v0, Ljava/io/File;

    const-string v1, "code.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 654
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 657
    new-instance v1, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;

    move-result-object v1

    .line 659
    .local v1, "projectMetaData":Lorg/catrobat/catroid/common/ProjectData;
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ProjectData;->hasScenes()Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    new-instance v2, Ljava/io/File;

    const-string v3, "images"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 661
    new-instance v2, Ljava/io/File;

    const-string v3, "sounds"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 663
    const-class v2, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;

    const-class v3, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 664
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    .line 665
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getProjectFromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;

    .line 666
    .local v2, "projectWithoutScenes":Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;
    const-class v3, Lorg/catrobat/catroid/content/Project;

    const-class v4, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 668
    invoke-virtual {v2, p2}, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyProjectWithoutScenes;->toProject(Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    move-object v2, v3

    .line 669
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    goto :goto_1

    .end local v2    # "project":Lorg/catrobat/catroid/content/Project;
    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ProjectData;->getLanguageVersion()D

    move-result-wide v2

    const-wide v4, 0x3feff8a0902de00dL    # 0.9991

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 670
    const-class v2, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;

    const-class v3, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 671
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    .line 672
    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getProjectFromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;

    .line 673
    .local v2, "legacyProject":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;
    const-class v3, Lorg/catrobat/catroid/content/Project;

    const-class v4, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 675
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectUntilLanguageVersion0999;->toProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    move-object v2, v3

    .line 676
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    goto :goto_1

    .line 677
    .end local v2    # "project":Lorg/catrobat/catroid/content/Project;
    :cond_1
    const-class v2, Lorg/catrobat/catroid/content/Project;

    const-class v3, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/io/XstreamSerializer;->prepareXstream(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 678
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getProjectFromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Project;

    .line 680
    .restart local v2    # "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Scene;

    .line 681
    .local v4, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/content/Scene;->setProject(Lorg/catrobat/catroid/content/Project;)V

    .line 682
    .end local v4    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 684
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->checkForInvisibleSprites()V

    .line 685
    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/content/Project;->setDirectory(Ljava/io/File;)V

    .line 686
    invoke-static {v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->setFileReferences(Lorg/catrobat/catroid/content/Project;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    nop

    .line 692
    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 687
    return-object v2

    .line 692
    .end local v1    # "projectMetaData":Lorg/catrobat/catroid/common/ProjectData;
    .end local v2    # "project":Lorg/catrobat/catroid/content/Project;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/catrobat/catroid/exceptions/LoadingProjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load project from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/exceptions/LoadingProjectException;-><init>(Ljava/lang/String;)V

    .end local v0    # "xmlFile":Ljava/io/File;
    .end local p1    # "projectDir":Ljava/io/File;
    .end local p2    # "context":Landroid/content/Context;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "xmlFile":Ljava/io/File;
    .restart local p1    # "projectDir":Ljava/io/File;
    .restart local p2    # "context":Landroid/content/Context;
    :goto_2
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 693
    throw v1

    .line 649
    :cond_3
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public saveProject(Lorg/catrobat/catroid/content/Project;)Z
    .locals 12
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 781
    const-string v0, " failed."

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 782
    return v1

    .line 786
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->cleanUpTmpCodeFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/exceptions/LoadingProjectException; {:try_start_0 .. :try_end_0} :catch_2

    .line 789
    nop

    .line 791
    iget-object v2, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 792
    const-string v2, "catroid"

    const-string v3, "pocketCodeBeta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "debug"

    if-eqz v2, :cond_1

    .line 793
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationBuildType(Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/XmlHeader;->setApplicationBuildType(Ljava/lang/String;)V

    .line 799
    :goto_0
    :try_start_1
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?>\n"

    iget-object v3, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->xstream:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v3, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "currentXml":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "tmp_code.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    .local v3, "tmpCodeFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "code.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 803
    .local v4, "currentCodeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    .line 805
    :try_start_2
    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "previousXml":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 808
    sget-object v6, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Project version is the same. Do not update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    nop

    .line 849
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 809
    return v1

    .line 811
    :cond_2
    :try_start_3
    const-string v6, "<catrobatLanguageVersion>.*</catrobatLanguageVersion>"

    .line 812
    .local v6, "languageRegex":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 813
    .local v7, "languagePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 814
    .local v8, "currentLanguageMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 815
    .local v9, "previousLanguageMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 816
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 817
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 818
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 817
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 818
    invoke-direct {p0, v2, v5}, Lorg/catrobat/catroid/io/XstreamSerializer;->unnecessaryChanges(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 819
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v10

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/catrobat/catroid/ProjectManager;->changedProject(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 825
    .end local v5    # "previousXml":Ljava/lang/String;
    .end local v6    # "languageRegex":Ljava/lang/String;
    .end local v7    # "languagePattern":Ljava/util/regex/Pattern;
    .end local v8    # "currentLanguageMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "previousLanguageMatcher":Ljava/util/regex/Matcher;
    :cond_3
    goto :goto_1

    .line 822
    :catch_0
    move-exception v5

    .line 823
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening project at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 824
    nop

    .line 849
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 824
    return v1

    .line 828
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    :try_start_5
    sget-object v5, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->createDir(Ljava/io/File;)V

    .line 829
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/catroid/io/StorageOperations;->createDir(Ljava/io/File;)V

    .line 831
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Scene;

    .line 832
    .local v6, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lorg/catrobat/catroid/io/StorageOperations;->createSceneDirectory(Ljava/io/File;)V

    .line 833
    .end local v6    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_2

    .line 834
    :cond_5
    invoke-static {v3, v2}, Lorg/catrobat/catroid/io/StorageOperations;->writeToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_6

    .line 837
    sget-object v5, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_6
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 841
    sget-object v5, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot rename code.xml for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 844
    :cond_7
    const/4 v0, 0x1

    .line 849
    iget-object v1, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 844
    return v0

    .line 849
    .end local v2    # "currentXml":Ljava/lang/String;
    .end local v3    # "tmpCodeFile":Ljava/io/File;
    .end local v4    # "currentCodeFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 845
    :catch_1
    move-exception v2

    .line 846
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_6
    sget-object v3, Lorg/catrobat/catroid/io/XstreamSerializer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving project "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 847
    nop

    .line 849
    iget-object v0, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 847
    return v1

    .line 849
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lorg/catrobat/catroid/io/XstreamSerializer;->loadSaveLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 850
    throw v0

    .line 787
    :catch_2
    move-exception v0

    .line 788
    .local v0, "e":Lorg/catrobat/catroid/exceptions/LoadingProjectException;
    return v1
.end method
