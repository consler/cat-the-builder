.class public Lcom/thoughtworks/xstream/XStream;
.super Ljava/lang/Object;
.source "XStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/XStream$InternalBlackList;,
        Lcom/thoughtworks/xstream/XStream$InitializationException;
    }
.end annotation


# static fields
.field private static final ANNOTATION_MAPPER_TYPE:Ljava/lang/String; = "com.thoughtworks.xstream.mapper.AnnotationMapper"

.field public static final ID_REFERENCES:I = 0x3ea

.field private static final IGNORE_ALL:Ljava/util/regex/Pattern;

.field public static final NO_REFERENCES:I = 0x3e9

.field public static final PRIORITY_LOW:I = -0xa

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_VERY_HIGH:I = 0x2710

.field public static final PRIORITY_VERY_LOW:I = -0x14

.field public static final SINGLE_NODE_XPATH_ABSOLUTE_REFERENCES:I = 0x3ee

.field public static final SINGLE_NODE_XPATH_RELATIVE_REFERENCES:I = 0x3ed

.field public static final XPATH_ABSOLUTE_REFERENCES:I = 0x3ec

.field public static final XPATH_RELATIVE_REFERENCES:I = 0x3eb

.field static synthetic array$Ljava$lang$String:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

.field static synthetic class$java$io$File:Ljava/lang/Class;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Number:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;

.field static synthetic class$java$lang$StackTraceElement:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$lang$StringBuffer:Ljava/lang/Class;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;

.field static synthetic class$java$lang$Void:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Constructor:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Field:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Member:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Method:Ljava/lang/Class;

.field static synthetic class$java$math$BigDecimal:Ljava/lang/Class;

.field static synthetic class$java$math$BigInteger:Ljava/lang/Class;

.field static synthetic class$java$net$URI:Ljava/lang/Class;

.field static synthetic class$java$net$URL:Ljava/lang/Class;

.field static synthetic class$java$nio$charset$Charset:Ljava/lang/Class;

.field static synthetic class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

.field static synthetic class$java$util$ArrayList:Ljava/lang/Class;

.field static synthetic class$java$util$BitSet:Ljava/lang/Class;

.field static synthetic class$java$util$Calendar:Ljava/lang/Class;

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Currency:Ljava/lang/Class;

.field static synthetic class$java$util$Date:Ljava/lang/Class;

.field static synthetic class$java$util$GregorianCalendar:Ljava/lang/Class;

.field static synthetic class$java$util$HashMap:Ljava/lang/Class;

.field static synthetic class$java$util$HashSet:Ljava/lang/Class;

.field static synthetic class$java$util$Hashtable:Ljava/lang/Class;

.field static synthetic class$java$util$LinkedList:Ljava/lang/Class;

.field static synthetic class$java$util$List:Ljava/lang/Class;

.field static synthetic class$java$util$Locale:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;

.field static synthetic class$java$util$Map$Entry:Ljava/lang/Class;

.field static synthetic class$java$util$Properties:Ljava/lang/Class;

.field static synthetic class$java$util$Set:Ljava/lang/Class;

.field static synthetic class$java$util$SortedSet:Ljava/lang/Class;

.field static synthetic class$java$util$TimeZone:Ljava/lang/Class;

.field static synthetic class$java$util$TreeMap:Ljava/lang/Class;

.field static synthetic class$java$util$TreeSet:Ljava/lang/Class;

.field static synthetic class$java$util$Vector:Ljava/lang/Class;

.field static synthetic class$java$util$regex$Pattern:Ljava/lang/Class;


# instance fields
.field private annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

.field private attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

.field private attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

.field private classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

.field private classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

.field private defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

.field private elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

.field private fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

.field private hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

.field private immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

.field private implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

.field private localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

.field private packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private transient securityInitialized:Z

.field private securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

.field private transient securityWarningGiven:Z

.field private systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 357
    const-string v0, ".*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 369
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 370
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 2
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 383
    const/4 v0, 0x0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "hierarchicalStreamDriver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 411
    const/4 v0, 0x0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 412
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 448
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 508
    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    .line 510
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 1
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p5, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p6, "converterRegistry"    # Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    if-nez p1, :cond_0

    .line 580
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object p1

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 583
    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 584
    iput-object p3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 585
    iput-object p5, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 586
    iput-object p6, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    .line 587
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 589
    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->setupMappers()V

    .line 590
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupSecurity()V

    .line 591
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupAliases()V

    .line 592
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupDefaultImplementations()V

    .line 593
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupConverters()V

    .line 594
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupImmutableTypes()V

    .line 595
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMode(I)V

    .line 596
    return-void
.end method

.method private constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 7
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoader"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p5, "defaultConverterLookup"    # Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    .line 515
    new-instance v5, Lcom/thoughtworks/xstream/XStream$1;

    invoke-direct {v5, p5}, Lcom/thoughtworks/xstream/XStream$1;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    new-instance v6, Lcom/thoughtworks/xstream/XStream$2;

    invoke-direct {v6, p5}, Lcom/thoughtworks/xstream/XStream$2;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    .line 524
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 463
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 484
    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    .line 486
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 7
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p5, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p6, "converterRegistry"    # Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    .line 549
    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    .line 550
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "driver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 430
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 431
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 2
    .param p1, "hierarchicalStreamDriver"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 397
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 398
    return-void
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/XStream;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/XStream;

    .line 315
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityInitialized:Z

    return v0
.end method

.method private addImmutableTypeDynamically(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isReferenceable"    # Z

    .line 1252
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1253
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1256
    :cond_0
    return-void
.end method

.method private aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 941
    invoke-static {p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 942
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 945
    :cond_0
    return-void
.end method

.method private buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 9

    .line 599
    new-instance v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 600
    .local v0, "mapper":Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->useXStream11XmlFriendlyMapper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    new-instance v1, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 603
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 604
    new-instance v1, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 605
    new-instance v1, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 606
    new-instance v1, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 607
    new-instance v1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 608
    new-instance v1, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 609
    new-instance v1, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 610
    new-instance v1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    move-object v0, v1

    .line 611
    new-instance v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 612
    new-instance v1, Lcom/thoughtworks/xstream/mapper/ArrayMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ArrayMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 613
    new-instance v1, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 614
    new-instance v1, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v1, v0, v2, v3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    move-object v0, v1

    .line 615
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 616
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_1

    .line 617
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    aput-object v6, v2, v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 616
    const-string v7, "com.thoughtworks.xstream.mapper.EnumMapper"

    invoke-direct {p0, v7, v2, v6}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    .line 620
    :cond_2
    new-instance v2, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v2

    .line 621
    new-instance v2, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v2

    .line 622
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 623
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_3

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_3
    aput-object v6, v2, v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v7, "com.thoughtworks.xstream.mapper.LambdaMapper"

    invoke-direct {p0, v7, v2, v6}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    .line 626
    :cond_4
    new-instance v2, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v2

    .line 627
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 628
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_5

    .line 629
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_1

    :cond_5
    nop

    :goto_1
    aput-object v6, v2, v4

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    if-nez v3, :cond_6

    const-string v3, "com.thoughtworks.xstream.converters.ConverterRegistry"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    :cond_6
    aput-object v3, v2, v5

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v3, :cond_7

    const-string v3, "com.thoughtworks.xstream.converters.ConverterLookup"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    :cond_7
    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    if-nez v3, :cond_8

    .line 630
    const-string v3, "com.thoughtworks.xstream.core.ClassLoaderReference"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    goto :goto_2

    :cond_8
    nop

    :goto_2
    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v3, :cond_9

    const-string v3, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    :cond_9
    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v3, v1, v8

    .line 628
    const-string v3, "com.thoughtworks.xstream.mapper.AnnotationMapper"

    invoke-direct {p0, v3, v2, v1}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    .line 634
    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/XStream;->wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    move-result-object v0

    .line 635
    new-instance v1, Lcom/thoughtworks/xstream/mapper/CachingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/CachingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 636
    return-object v0
.end method

.method private buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "constructorParamTypes"    # [Ljava/lang/Class;
    .param p3, "constructorParamValues"    # [Ljava/lang/Object;

    .line 642
    const-string v0, "Could not instantiate mapper : "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 643
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 644
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thoughtworks/xstream/mapper/Mapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 648
    .end local v1    # "type":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/LinkageError;
    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 645
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 617
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityWarningGiven:Z

    .line 2516
    return-object p0
.end method

.method private registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "constructorParamTypes"    # [Ljava/lang/Class;
    .param p4, "constructorParamValues"    # [Ljava/lang/Object;

    .line 1131
    const-string v0, "Could not instantiate converter : "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1132
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1133
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1134
    .local v3, "instance":Ljava/lang/Object;
    instance-of v4, v3, Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v4, :cond_0

    .line 1135
    move-object v4, v3

    check-cast v4, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-virtual {p0, v4, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    goto :goto_0

    .line 1136
    :cond_0
    instance-of v4, v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v4, :cond_1

    .line 1137
    move-object v4, v3

    check-cast v4, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {p0, v4, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v1    # "type":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "instance":Ljava/lang/Object;
    :cond_1
    :goto_0
    nop

    .line 1146
    return-void

    .line 1142
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/lang/LinkageError;
    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1139
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v1

    .line 1140
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setupDefaultSecurity(Lcom/thoughtworks/xstream/XStream;)V
    .locals 6
    .param p0, "xstream"    # Lcom/thoughtworks/xstream/XStream;

    .line 715
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityInitialized:Z

    if-nez v0, :cond_1c

    .line 716
    sget-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->NONE:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 717
    sget-object v0, Lcom/thoughtworks/xstream/security/NullPermission;->NULL:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 718
    sget-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 719
    sget-object v0, Lcom/thoughtworks/xstream/security/ArrayTypePermission;->ARRAYS:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 720
    sget-object v0, Lcom/thoughtworks/xstream/security/InterfaceTypePermission;->INTERFACES:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 721
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 722
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Collection:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 723
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 724
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 725
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Member:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.reflect.Member"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Member:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 726
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 727
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 728
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TimeZone:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.util.TimeZone"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TimeZone:Ljava/lang/Class;

    :cond_7
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 730
    const-string v0, "java.lang.Enum"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 731
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_8

    .line 732
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 734
    :cond_8
    const-string v1, "java.nio.file.Path"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_9

    .line 736
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 739
    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 740
    .local v1, "types":Ljava/util/Set;
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    if-nez v2, :cond_a

    const-string v2, "java.util.BitSet"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    :cond_a
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$nio$charset$Charset:Ljava/lang/Class;

    if-nez v2, :cond_b

    const-string v2, "java.nio.charset.Charset"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$nio$charset$Charset:Ljava/lang/Class;

    :cond_b
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v2, :cond_c

    const-string v2, "java.lang.Class"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_c
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Currency:Ljava/lang/Class;

    if-nez v2, :cond_d

    const-string v2, "java.util.Currency"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Currency:Ljava/lang/Class;

    :cond_d
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    if-nez v2, :cond_e

    const-string v2, "java.util.Date"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    :cond_e
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

    if-nez v2, :cond_f

    const-string v2, "java.text.DecimalFormatSymbols"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

    :cond_f
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string v2, "java.io.File"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_10
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "java.util.Locale"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    :cond_11
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_12

    const-string v2, "java.lang.Object"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    :cond_12
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$regex$Pattern:Ljava/lang/Class;

    if-nez v2, :cond_13

    const-string v2, "java.util.regex.Pattern"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$util$regex$Pattern:Ljava/lang/Class;

    :cond_13
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "java.lang.StackTraceElement"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    :cond_14
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_15

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_15
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    if-nez v2, :cond_16

    const-string v2, "java.lang.StringBuffer"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    :cond_16
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    const-string v2, "java.lang.StringBuilder"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v2, :cond_17

    const-string v2, "java.net.URL"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_17
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v2, :cond_18

    const-string v2, "java.net.URI"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_18
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v2, "java.util.UUID"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 758
    const-string v2, "java.sql.Timestamp"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v2, "java.sql.Time"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 760
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_19
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 763
    const-string v2, "java.time.Clock"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 764
    const-string v2, "java.time.Duration"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    const-string v2, "java.time.Instant"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v2, "java.time.LocalDate"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    const-string v2, "java.time.LocalDateTime"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v2, "java.time.LocalTime"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v2, "java.time.MonthDay"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    const-string v2, "java.time.OffsetDateTime"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    const-string v2, "java.time.OffsetTime"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    const-string v2, "java.time.Period"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v2, "java.time.Ser"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v2, "java.time.Year"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v2, "java.time.YearMonth"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    const-string v2, "java.time.ZonedDateTime"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v2, "java.time.ZoneId"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 778
    const-string v2, "java.time.chrono.HijrahDate"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v2, "java.time.chrono.JapaneseDate"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    const-string v2, "java.time.chrono.JapaneseEra"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v2, "java.time.chrono.MinguoDate"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 782
    const-string v2, "java.time.chrono.ThaiBuddhistDate"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 783
    const-string v2, "java.time.chrono.Ser"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 784
    const-string v2, "java.time.chrono.Chronology"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 785
    const-string v2, "java.time.temporal.ValueRange"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    const-string v2, "java.time.temporal.WeekFields"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_1a
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 790
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 791
    .local v2, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    .line 792
    .local v3, "classes":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1b

    .line 793
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 792
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 795
    .end local v4    # "i":I
    :cond_1b
    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/XStream;->allowTypes([Ljava/lang/Class;)V

    .line 796
    .end local v0    # "type":Ljava/lang/Class;
    .end local v1    # "types":Ljava/util/Set;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "classes":[Ljava/lang/Class;
    nop

    .line 799
    return-void

    .line 797
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Security framework of XStream instance already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupMappers()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 667
    const-string v1, "com.thoughtworks.xstream.mapper.PackageAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    .line 668
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 669
    const-string v1, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    .line 670
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 671
    const-string v1, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    .line 672
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 673
    const-string v1, "com.thoughtworks.xstream.mapper.FieldAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    .line 674
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 675
    const-string v1, "com.thoughtworks.xstream.mapper.AttributeMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    .line 676
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_5

    .line 677
    const-string v1, "com.thoughtworks.xstream.mapper.AttributeAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    .line 678
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_6

    .line 679
    const-string v1, "com.thoughtworks.xstream.mapper.SystemAttributeAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    .line 680
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    if-nez v1, :cond_7

    .line 681
    const-string v1, "com.thoughtworks.xstream.mapper.ImplicitCollectionMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    .line 682
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    if-nez v1, :cond_8

    .line 683
    const-string v1, "com.thoughtworks.xstream.mapper.DefaultImplementationsMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    .line 684
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    if-nez v1, :cond_9

    .line 685
    const-string v1, "com.thoughtworks.xstream.mapper.ImmutableTypesMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    goto :goto_9

    :cond_9
    nop

    :goto_9
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    .line 686
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    if-nez v1, :cond_a

    .line 687
    const-string v1, "com.thoughtworks.xstream.mapper.LocalConversionMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    goto :goto_a

    :cond_a
    nop

    :goto_a
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    .line 688
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

    if-nez v1, :cond_b

    .line 689
    const-string v1, "com.thoughtworks.xstream.mapper.SecurityMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    .line 690
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

    if-nez v1, :cond_c

    .line 691
    const-string v1, "com.thoughtworks.xstream.mapper.AnnotationConfiguration"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

    goto :goto_c

    :cond_c
    nop

    :goto_c
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    .line 692
    return-void
.end method


# virtual methods
.method public addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p1, "defaultImplementation"    # Ljava/lang/Class;
    .param p2, "ofType"    # Ljava/lang/Class;

    .line 1691
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_1

    .line 1692
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1693
    const-string v2, "com.thoughtworks.xstream.mapper.DefaultImplementationsMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1697
    return-void
.end method

.method public addImmutableType(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 1707
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1708
    return-void
.end method

.method public addImmutableType(Ljava/lang/Class;Z)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "isReferenceable"    # Z

    .line 1726
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_1

    .line 1727
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1728
    const-string v2, "com.thoughtworks.xstream.mapper.ImmutableTypesMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1732
    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1904
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1905
    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/Class;

    .line 1919
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1920
    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemName"    # Ljava/lang/String;

    .line 1933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1934
    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1863
    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/Class;

    .line 1876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1877
    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemFieldName"    # Ljava/lang/String;
    .param p4, "itemType"    # Ljava/lang/Class;

    .line 1893
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/Class;
    .param p4, "keyFieldName"    # Ljava/lang/String;

    .line 1948
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1949
    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .param p1, "ownerType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "itemType"    # Ljava/lang/Class;
    .param p5, "keyFieldName"    # Ljava/lang/String;

    .line 1965
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v0, :cond_1

    .line 1966
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1967
    const-string v2, "com.thoughtworks.xstream.mapper.ImplicitCollectionMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1971
    return-void
.end method

.method public addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 2
    .param p1, "permission"    # Lcom/thoughtworks/xstream/security/TypePermission;

    .line 2362
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-eqz v0, :cond_0

    .line 2363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/XStream;->securityInitialized:Z

    .line 2364
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2366
    :cond_0
    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 1506
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_1

    .line 1507
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1508
    const-string v2, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1512
    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "defaultImplementation"    # Ljava/lang/Class;

    .line 1542
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1543
    invoke-virtual {p0, p3, p2}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1544
    return-void
.end method

.method public aliasAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .line 1627
    invoke-virtual {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/XStream;->aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1629
    return-void
.end method

.method public aliasAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;

    .line 1589
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    if-nez v0, :cond_1

    .line 1590
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1591
    const-string v2, "com.thoughtworks.xstream.mapper.AttributeAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1594
    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "definedIn"    # Ljava/lang/Class;
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 1573
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v0, :cond_1

    .line 1574
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1575
    const-string v2, "com.thoughtworks.xstream.mapper.FieldAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1578
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1579
    return-void
.end method

.method public aliasPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 1556
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    if-nez v0, :cond_1

    .line 1557
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1558
    const-string v2, "com.thoughtworks.xstream.mapper.PackageAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->addPackageAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method public aliasSystemAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "systemAttributeName"    # Ljava/lang/String;

    .line 1609
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    if-nez v0, :cond_1

    .line 1610
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1611
    const-string v2, "com.thoughtworks.xstream.mapper.SystemAttributeAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    return-void
.end method

.method public aliasType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 1524
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_1

    .line 1525
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1526
    const-string v2, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1530
    return-void
.end method

.method public allowTypeHierarchy(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 2395
    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2396
    return-void
.end method

.method public allowTypes([Ljava/lang/Class;)V
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;

    .line 2385
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2386
    return-void
.end method

.method public allowTypes([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 2375
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2376
    return-void
.end method

.method public allowTypesByRegExp([Ljava/lang/String;)V
    .locals 1
    .param p1, "regexps"    # [Ljava/lang/String;

    .line 2405
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2406
    return-void
.end method

.method public allowTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "regexps"    # [Ljava/util/regex/Pattern;

    .line 2415
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2416
    return-void
.end method

.method public allowTypesByWildcard([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 2433
    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2434
    return-void
.end method

.method public autodetectAnnotations(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 2345
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-eqz v0, :cond_0

    .line 2346
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->autodetectAnnotations(Z)V

    .line 2348
    :cond_0
    return-void
.end method

.method public createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectInputStream;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2195
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    new-instance v1, Lcom/thoughtworks/xstream/XStream$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/thoughtworks/xstream/XStream$4;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-object v0
.end method

.method public createObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2161
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectInputStream(Ljava/io/Reader;)Ljava/io/ObjectInputStream;
    .locals 1
    .param p1, "xmlReader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)Ljava/io/ObjectOutputStream;
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2019
    const-string v0, "object-stream"

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "rootNodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2098
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectOutputStream;
    .locals 3
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "rootNodeName"    # Ljava/lang/String;
    .param p3, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2110
    new-instance v0, Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StatefulWriter;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 2111
    .local v0, "statefulWriter":Lcom/thoughtworks/xstream/io/StatefulWriter;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2112
    new-instance v1, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    new-instance v2, Lcom/thoughtworks/xstream/XStream$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/thoughtworks/xstream/XStream$3;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/StatefulWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V

    return-object v1
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 2052
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 2051
    const-string v1, "object-stream"

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "rootNodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2066
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 2067
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 2066
    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 2001
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 2000
    const-string v1, "object-stream"

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createObjectOutputStream(Ljava/io/Writer;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "rootNodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2033
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 2034
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 2033
    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 1
    .param p1, "permission"    # Lcom/thoughtworks/xstream/security/TypePermission;

    .line 2443
    new-instance v0, Lcom/thoughtworks/xstream/security/NoPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/NoPermission;-><init>(Lcom/thoughtworks/xstream/security/TypePermission;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2444
    return-void
.end method

.method public denyTypeHierarchy(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 2473
    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2474
    return-void
.end method

.method public denyTypes([Ljava/lang/Class;)V
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;

    .line 2463
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2464
    return-void
.end method

.method public denyTypes([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .line 2453
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2454
    return-void
.end method

.method public denyTypesByRegExp([Ljava/lang/String;)V
    .locals 1
    .param p1, "regexps"    # [Ljava/lang/String;

    .line 2483
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2484
    return-void
.end method

.method public denyTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "regexps"    # [Ljava/util/regex/Pattern;

    .line 2493
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2494
    return-void
.end method

.method public denyTypesByWildcard([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 2511
    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 2512
    return-void
.end method

.method public fromXML(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 1373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1429
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    .line 1431
    .local v0, "reader":Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    .line 1431
    return-object v1

    .line 1433
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    .line 1434
    throw v1
.end method

.method public fromXML(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .line 1347
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1446
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 1338
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "xml"    # Ljava/io/Reader;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1397
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;

    .line 1329
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1385
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 1360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1413
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoaderReference()Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .locals 1

    .line 2256
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-object v0
.end method

.method public getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object v0
.end method

.method public getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public ignoreUnknownElements()V
    .locals 1

    .line 2281
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    .line 2282
    return-void
.end method

.method public ignoreUnknownElements(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2291
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    .line 2292
    return-void
.end method

.method public ignoreUnknownElements(Ljava/util/regex/Pattern;)V
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 2301
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-nez v0, :cond_1

    .line 2302
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 2303
    const-string v2, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2306
    :cond_1
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->addElementsToIgnore(Ljava/util/regex/Pattern;)V

    .line 2307
    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    .line 1310
    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 1320
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/MarshallingStrategy;->marshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    .line 1321
    return-void
.end method

.method public newDataHolder()Lcom/thoughtworks/xstream/converters/DataHolder;
    .locals 1

    .line 1983
    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    return-object v0
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 2267
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-nez v0, :cond_1

    .line 2268
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 2269
    const-string v2, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2272
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2273
    return-void
.end method

.method public processAnnotations(Ljava/lang/Class;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 2332
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->processAnnotations([Ljava/lang/Class;)V

    .line 2333
    return-void
.end method

.method public processAnnotations([Ljava/lang/Class;)V
    .locals 2
    .param p1, "types"    # [Ljava/lang/Class;

    .line 2316
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-eqz v0, :cond_0

    .line 2321
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->processAnnotations([Ljava/lang/Class;)V

    .line 2322
    return-void

    .line 2317
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    const-string v1, "No com.thoughtworks.xstream.mapper.AnnotationMapper available"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .line 1735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1736
    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p2, "priority"    # I

    .line 1739
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    .line 1740
    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1742
    :cond_0
    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 1745
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1746
    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    .locals 2
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .param p2, "priority"    # I

    .line 1749
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    .line 1750
    new-instance v1, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1753
    :cond_0
    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 3
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .line 1764
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    if-nez v0, :cond_1

    .line 1765
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1766
    const-string v2, "com.thoughtworks.xstream.mapper.LocalConversionMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 1770
    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 1782
    new-instance v0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 1784
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2235
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    .line 2236
    return-void
.end method

.method public setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V
    .locals 0
    .param p1, "marshallingStrategy"    # Lcom/thoughtworks/xstream/MarshallingStrategy;

    .line 1259
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    .line 1260
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1823
    packed-switch p1, :pswitch_data_0

    .line 1849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1844
    :pswitch_0
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    sget v2, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1847
    goto :goto_0

    .line 1839
    :pswitch_1
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    sget v2, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1842
    goto :goto_0

    .line 1835
    :pswitch_2
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1837
    goto :goto_0

    .line 1831
    :pswitch_3
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1833
    goto :goto_0

    .line 1828
    :pswitch_4
    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1829
    goto :goto_0

    .line 1825
    :pswitch_5
    new-instance v0, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    .line 1826
    nop

    .line 1851
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupAliases()V
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_0

    .line 803
    return-void

    .line 806
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    const-string v1, "null"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 807
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_2
    const-string v1, "int"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 808
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    :cond_3
    const-string v1, "float"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 809
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    :cond_4
    const-string v1, "double"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 810
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    :cond_5
    const-string v1, "long"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 811
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    :cond_6
    const-string v1, "short"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 812
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    :cond_7
    const-string v1, "char"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 813
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_8
    const-string v1, "byte"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 814
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_9
    const-string v1, "boolean"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 815
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    :cond_a
    const-string v1, "number"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 816
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    :cond_b
    const-string v1, "object"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 817
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_c
    const-string v1, "big-int"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 818
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_d
    const-string v1, "big-decimal"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 820
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.lang.StringBuffer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    :cond_e
    const-string v1, "string-buffer"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 821
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_f
    const-string v1, "string"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 822
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_10
    const-string v1, "java-class"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 823
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Method:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string v0, "java.lang.reflect.Method"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Method:Ljava/lang/Class;

    :cond_11
    const-string v1, "method"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 824
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "java.lang.reflect.Constructor"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    :cond_12
    const-string v1, "constructor"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 825
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Field:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "java.lang.reflect.Field"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Field:Ljava/lang/Class;

    :cond_13
    const-string v1, "field"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 826
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    :cond_14
    const-string v1, "date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 827
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.net.URI"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_15
    const-string v1, "uri"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 828
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_16
    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 829
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "java.util.BitSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    :cond_17
    const-string v1, "bit-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 831
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_18
    const-string v1, "map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 832
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_19
    const-string v1, "entry"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 833
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Properties:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "java.util.Properties"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Properties:Ljava/lang/Class;

    :cond_1a
    const-string v1, "properties"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 834
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    if-nez v0, :cond_1b

    const-string v0, "java.util.List"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    :cond_1b
    const-string v1, "list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 835
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "java.util.Set"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    :cond_1c
    const-string v1, "set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 836
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "java.util.SortedSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    :cond_1d
    const-string v1, "sorted-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 838
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$LinkedList:Ljava/lang/Class;

    if-nez v0, :cond_1e

    const-string v0, "java.util.LinkedList"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$LinkedList:Ljava/lang/Class;

    :cond_1e
    const-string v1, "linked-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 839
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Vector:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string v0, "java.util.Vector"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Vector:Ljava/lang/Class;

    :cond_1f
    const-string v1, "vector"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 840
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_20

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeMap:Ljava/lang/Class;

    :cond_20
    const-string v1, "tree-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 841
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_21

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_21
    const-string v1, "tree-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 842
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Hashtable:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string v0, "java.util.Hashtable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Hashtable:Ljava/lang/Class;

    :cond_22
    const-string v1, "hashtable"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 844
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 845
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 846
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 847
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 848
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 849
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 851
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 855
    const-string v0, "java.awt.Color"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "awt-color"

    invoke-virtual {p0, v2, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 856
    const-string v0, "java.awt.Font"

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "awt-font"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 857
    const-string v0, "java.awt.font.TextAttribute"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "awt-text-attribute"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 860
    :cond_23
    const-string v0, "javax.activation.ActivationDataFlavor"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 861
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_24

    .line 862
    const-string v1, "activation-data-flavor"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 865
    :cond_24
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 866
    const-string v1, "java.sql.Timestamp"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sql-timestamp"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 867
    const-string v1, "java.sql.Time"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sql-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 868
    const-string v1, "java.sql.Date"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sql-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 871
    :cond_25
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v1, :cond_26

    const-string v1, "java.io.File"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_26
    const-string v2, "file"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 872
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v1, :cond_27

    const-string v1, "java.util.Locale"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    :cond_27
    const-string v2, "locale"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 873
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v1, :cond_28

    const-string v1, "java.util.Calendar"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_28
    const-string v2, "gregorian-calendar"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 875
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 876
    const-string v1, "auth-subject"

    const-string v2, "javax.security.auth.Subject"

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v1, "java.util.LinkedHashMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "linked-hash-map"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 878
    const-string v1, "java.util.LinkedHashSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "linked-hash-set"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 879
    const-string v1, "java.lang.StackTraceElement"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "trace"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 880
    const-string v1, "java.util.Currency"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currency"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 881
    const-string v1, "java.nio.charset.Charset"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 884
    :cond_29
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 885
    const-string v1, "xml-duration"

    const-string v2, "javax.xml.datatype.Duration"

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v1, "java.util.concurrent.ConcurrentHashMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "concurrent-hash-map"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 887
    const-string v1, "java.util.EnumSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enum-set"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 888
    const-string v1, "java.util.EnumMap"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enum-map"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 889
    const-string v1, "java.lang.StringBuilder"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "string-builder"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 890
    const-string v1, "java.util.UUID"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 893
    :cond_2a
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 894
    const-string v1, "java.nio.file.Path"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 897
    :cond_2b
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 898
    const-string v1, "java.time.Clock$FixedClock"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "fixed-clock"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 899
    const-string v1, "java.time.Clock$OffsetClock"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "offset-clock"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 900
    const-string v1, "java.time.Clock$SystemClock"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "system-clock"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 901
    const-string v1, "java.time.Clock$TickClock"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tick-clock"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 902
    const-string v1, "java.time.DayOfWeek"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "day-of-week"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 903
    const-string v1, "java.time.Duration"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 904
    const-string v1, "java.time.Instant"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "instant"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 905
    const-string v1, "java.time.LocalDate"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "local-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 906
    const-string v1, "java.time.LocalDateTime"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "local-date-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 907
    const-string v1, "java.time.LocalTime"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "local-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 908
    const-string v1, "java.time.Month"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 909
    const-string v1, "java.time.MonthDay"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "month-day"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 910
    const-string v1, "java.time.OffsetDateTime"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "offset-date-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 911
    const-string v1, "java.time.OffsetTime"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "offset-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 912
    const-string v1, "java.time.Period"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "period"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 913
    const-string v1, "java.time.Year"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 914
    const-string v1, "java.time.YearMonth"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "year-month"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 915
    const-string v1, "java.time.ZonedDateTime"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "zoned-date-time"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 916
    const-string v1, "java.time.ZoneId"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "zone-id"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 917
    const-string v1, "java.time.chrono.Chronology"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "chronology"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 918
    const-string v1, "java.time.chrono.HijrahDate"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hijrah-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 919
    const-string v1, "java.time.chrono.HijrahEra"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hijrah-era"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 920
    const-string v1, "java.time.chrono.JapaneseDate"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "japanese-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 921
    const-string v1, "java.time.chrono.JapaneseEra"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "japanese-era"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 922
    const-string v1, "java.time.chrono.MinguoDate"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "minguo-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 923
    const-string v1, "java.time.chrono.MinguoEra"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "minguo-era"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 924
    const-string v1, "java.time.chrono.ThaiBuddhistDate"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "thai-buddhist-date"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 925
    const-string v1, "java.time.chrono.ThaiBuddhistEra"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "thai-buddhist-era"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 926
    const-string v1, "java.time.temporal.ChronoField"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "chrono-field"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 927
    const-string v1, "java.time.temporal.ChronoUnit"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "chrono-unit"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 928
    const-string v1, "java.time.temporal.IsoFields$Field"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "iso-field"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 929
    const-string v1, "java.time.temporal.IsoFields$Unit"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "iso-unit"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 930
    const-string v1, "java.time.temporal.JulianFields$Field"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "julian-field"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 931
    const-string v1, "java.time.temporal.ValueRange"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "temporal-value-range"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 932
    const-string v1, "java.time.temporal.WeekFields"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "week-fields"

    invoke-virtual {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 935
    :cond_2c
    const-string v1, "java.lang.invoke.SerializedLambda"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 936
    const-string v2, "serialized-lambda"

    invoke-direct {p0, v2, v1}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_2d
    return-void
.end method

.method protected setupConverters()V
    .locals 7

    .line 959
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    const/16 v1, -0x14

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 962
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 964
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 965
    new-instance v0, Lcom/thoughtworks/xstream/XStream$InternalBlackList;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/thoughtworks/xstream/XStream$InternalBlackList;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/XStream$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 967
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/NullConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/NullConverter;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 968
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/IntConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/IntConverter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 969
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 970
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 971
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/LongConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/LongConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 972
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 973
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/CharConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 974
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 975
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 977
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 978
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 979
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 980
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 981
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URIConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URIConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 982
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URLConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URLConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 983
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 984
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 986
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 987
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 988
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 989
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/MapConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 990
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 991
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 992
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 993
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 994
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 995
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 997
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FileConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/FileConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 998
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1000
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1001
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1003
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v3, v4}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1004
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1005
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1006
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1008
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/converters/extended/FontConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1010
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1011
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1013
    :cond_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v3, v4}, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1017
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 1018
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1020
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper"

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 1022
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_3

    .line 1024
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    nop

    :goto_0
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1022
    const-string v6, "com.thoughtworks.xstream.converters.extended.SubjectConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1025
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v5, :cond_4

    .line 1027
    const-string v5, "com.thoughtworks.xstream.converters.ConverterLookup"

    invoke-static {v5}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    nop

    :goto_1
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v6, v5, v1

    .line 1025
    const-string v6, "com.thoughtworks.xstream.converters.extended.ThrowableConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1029
    const-string v0, "com.thoughtworks.xstream.converters.extended.StackTraceElementConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1032
    const-string v0, "com.thoughtworks.xstream.converters.extended.CurrencyConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1035
    const-string v0, "com.thoughtworks.xstream.converters.extended.RegexPatternConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1038
    const-string v0, "com.thoughtworks.xstream.converters.extended.CharsetConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1043
    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1045
    const-string v0, "javax.xml.datatype.Duration"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1046
    const-string v0, "com.thoughtworks.xstream.converters.extended.DurationConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1050
    :cond_6
    const-string v0, "com.thoughtworks.xstream.converters.enums.EnumConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1053
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_7

    .line 1055
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_2

    :cond_7
    nop

    :goto_2
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1053
    const-string v6, "com.thoughtworks.xstream.converters.enums.EnumSetConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1056
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_8

    .line 1058
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_3

    :cond_8
    nop

    :goto_3
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1056
    const-string v6, "com.thoughtworks.xstream.converters.enums.EnumMapConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1059
    const-string v0, "com.thoughtworks.xstream.converters.basic.StringBuilderConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1062
    const-string v0, "com.thoughtworks.xstream.converters.basic.UUIDConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1066
    :cond_9
    const-string v0, "javax.activation.ActivationDataFlavor"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1067
    const-string v0, "com.thoughtworks.xstream.converters.extended.ActivationDataFlavorConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1070
    :cond_a
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1071
    const-string v0, "com.thoughtworks.xstream.converters.extended.PathConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1074
    :cond_b
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1075
    const-string v0, "com.thoughtworks.xstream.converters.time.ChronologyConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1077
    const-string v0, "com.thoughtworks.xstream.converters.time.DurationConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1079
    const-string v0, "com.thoughtworks.xstream.converters.time.HijrahDateConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1081
    const-string v0, "com.thoughtworks.xstream.converters.time.JapaneseDateConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1083
    const-string v0, "com.thoughtworks.xstream.converters.time.JapaneseEraConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1085
    const-string v0, "com.thoughtworks.xstream.converters.time.InstantConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1087
    const-string v0, "com.thoughtworks.xstream.converters.time.LocalDateConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1089
    const-string v0, "com.thoughtworks.xstream.converters.time.LocalDateTimeConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1091
    const-string v0, "com.thoughtworks.xstream.converters.time.LocalTimeConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1093
    const-string v0, "com.thoughtworks.xstream.converters.time.MinguoDateConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1095
    const-string v0, "com.thoughtworks.xstream.converters.time.MonthDayConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1097
    const-string v0, "com.thoughtworks.xstream.converters.time.OffsetDateTimeConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1099
    const-string v0, "com.thoughtworks.xstream.converters.time.OffsetTimeConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1101
    const-string v0, "com.thoughtworks.xstream.converters.time.PeriodConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1103
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_c

    .line 1104
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_4

    :cond_c
    nop

    :goto_4
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1103
    const-string v6, "com.thoughtworks.xstream.converters.time.SystemClockConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1105
    const-string v0, "com.thoughtworks.xstream.converters.time.ThaiBuddhistDateConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1107
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_d

    .line 1108
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_5

    :cond_d
    nop

    :goto_5
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1107
    const-string v6, "com.thoughtworks.xstream.converters.time.ValueRangeConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1109
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_e

    .line 1110
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_6

    :cond_e
    nop

    :goto_6
    aput-object v5, v0, v1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    .line 1109
    const-string v6, "com.thoughtworks.xstream.converters.time.WeekFieldsConverter"

    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1111
    const-string v0, "com.thoughtworks.xstream.converters.time.YearConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1113
    const-string v0, "com.thoughtworks.xstream.converters.time.YearMonthConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1115
    const-string v0, "com.thoughtworks.xstream.converters.time.ZonedDateTimeConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1117
    const-string v0, "com.thoughtworks.xstream.converters.time.ZoneIdConverter"

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1119
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_f

    .line 1120
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    goto :goto_7

    :cond_f
    nop

    :goto_7
    aput-object v5, v2, v1

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v3, :cond_10

    const-string v3, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    :cond_10
    aput-object v3, v2, v4

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    if-nez v3, :cond_11

    const-string v3, "com.thoughtworks.xstream.core.ClassLoaderReference"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    :cond_11
    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v3, v0, v5

    .line 1119
    const-string v3, "com.thoughtworks.xstream.converters.reflection.LambdaConverter"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1124
    :cond_12
    new-instance v0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-direct {v0, v2, p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;-><init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 1126
    return-void
.end method

.method protected setupDefaultImplementations()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_0

    .line 949
    return-void

    .line 951
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashMap:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.HashMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashMap:Ljava/lang/Class;

    :cond_1
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "java.util.Map"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 952
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.ArrayList"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_3
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.util.List"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 953
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashSet:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.util.HashSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashSet:Ljava/lang/Class;

    :cond_5
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "java.util.Set"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 954
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_7
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.util.SortedSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 955
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.util.GregorianCalendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    :cond_9
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "java.util.Calendar"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 956
    return-void
.end method

.method protected setupImmutableTypes()V
    .locals 8

    .line 1149
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_0

    .line 1150
    return-void

    .line 1154
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1155
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1156
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1157
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1158
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1159
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1160
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1161
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1162
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1163
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1164
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1165
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1166
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1167
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1168
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1169
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1172
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1173
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1174
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1175
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    const-string v2, "java.lang.String"

    if-nez v0, :cond_c

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_c
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1176
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_d
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1177
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.io.File"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1178
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_f
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1180
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    .line 1181
    const-string v0, "java.nio.file.Paths"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1182
    .local v0, "type":Ljava/lang/Class;
    if-eqz v0, :cond_13

    .line 1185
    :try_start_0
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v7, :cond_10

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_10
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v2, v6, v1

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "[Ljava.lang.String;"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_11
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v2, v6, v3

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1186
    .local v2, "methodGet":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_12

    .line 1187
    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "."

    aput-object v6, v5, v1

    new-array v6, v1, [Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1188
    .local v4, "path":Ljava/lang/Object;
    if-eqz v4, :cond_12

    .line 1189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    .end local v4    # "path":Ljava/lang/Object;
    :cond_12
    goto :goto_2

    .line 1195
    .end local v2    # "methodGet":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1194
    :catch_1
    move-exception v2

    .line 1196
    goto :goto_2

    .line 1193
    :catch_2
    move-exception v2

    .line 1196
    goto :goto_2

    .line 1192
    :catch_3
    move-exception v2

    .line 1200
    .end local v0    # "type":Ljava/lang/Class;
    :cond_13
    :goto_2
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1201
    const-string v0, "java.awt.font.TextAttribute"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1204
    :cond_14
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1206
    const-string v0, "java.nio.charset.Charset"

    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1207
    const-string v0, "java.util.Currency"

    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1210
    :cond_15
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1211
    const-string v0, "java.util.UUID"

    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1214
    :cond_16
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "java.net.URI"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_17
    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1215
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1216
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1217
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1219
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1220
    const-string v0, "java.time.Duration"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1221
    const-string v0, "java.time.Instant"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1222
    const-string v0, "java.time.LocalDate"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1223
    const-string v0, "java.time.LocalDateTime"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1224
    const-string v0, "java.time.LocalTime"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1225
    const-string v0, "java.time.MonthDay"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1226
    const-string v0, "java.time.OffsetDateTime"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1227
    const-string v0, "java.time.OffsetTime"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1228
    const-string v0, "java.time.Period"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1229
    const-string v0, "java.time.Year"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1230
    const-string v0, "java.time.YearMonth"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1231
    const-string v0, "java.time.ZonedDateTime"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1232
    const-string v0, "java.time.ZoneId"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1233
    const-string v0, "java.time.ZoneOffset"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1234
    const-string v0, "java.time.ZoneRegion"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1235
    const-string v0, "java.time.chrono.HijrahChronology"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1236
    const-string v0, "java.time.chrono.HijrahDate"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1237
    const-string v0, "java.time.chrono.IsoChronology"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1238
    const-string v0, "java.time.chrono.JapaneseChronology"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1239
    const-string v0, "java.time.chrono.JapaneseDate"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1240
    const-string v0, "java.time.chrono.JapaneseEra"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1241
    const-string v0, "java.time.chrono.MinguoChronology"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1242
    const-string v0, "java.time.chrono.MinguoDate"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1243
    const-string v0, "java.time.chrono.ThaiBuddhistChronology"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1244
    const-string v0, "java.time.chrono.ThaiBuddhistDate"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1245
    const-string v0, "java.time.temporal.IsoFields$Field"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1246
    const-string v0, "java.time.temporal.IsoFields$Unit"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1247
    const-string v0, "java.time.temporal.JulianFields$Field"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1249
    :cond_18
    return-void
.end method

.method protected setupSecurity()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-nez v0, :cond_0

    .line 696
    return-void

    .line 699
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityInitialized:Z

    .line 701
    return-void
.end method

.method public toXML(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1268
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1269
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 1270
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 1295
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 1297
    .local v0, "writer":Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1300
    nop

    .line 1301
    return-void

    .line 1299
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1300
    throw v1
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;

    .line 1280
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    .line 1282
    .local v0, "writer":Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1285
    nop

    .line 1286
    return-void

    .line 1284
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1285
    throw v1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "root"    # Ljava/lang/Object;

    .line 1467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "root"    # Ljava/lang/Object;
    .param p3, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 1483
    :try_start_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityWarningGiven:Z

    if-nez v0, :cond_0

    .line 1484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/XStream;->securityWarningGiven:Z

    .line 1485
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Security framework of XStream not initialized, XStream is probably vulnerable."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1487
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v5, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/thoughtworks/xstream/MarshallingStrategy;->unmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1492
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1493
    .local v2, "version":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    const-string v3, "not available"

    :goto_1
    const-string v4, "version"

    invoke-virtual {v0, v4, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    throw v0
.end method

.method public useAttributeFor(Ljava/lang/Class;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 1673
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1674
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1675
    const-string v2, "com.thoughtworks.xstream.mapper.AttributeMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_1
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;)V

    .line 1679
    return-void
.end method

.method public useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 1657
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1658
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1659
    const-string v2, "com.thoughtworks.xstream.mapper.AttributeMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1662
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method public useAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 1640
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1641
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1642
    const-string v2, "com.thoughtworks.xstream.mapper.AttributeMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1645
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1646
    return-void
.end method

.method protected useXStream11XmlFriendlyMapper()Z
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method protected wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .locals 0
    .param p1, "next"    # Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    .line 655
    return-object p1
.end method
