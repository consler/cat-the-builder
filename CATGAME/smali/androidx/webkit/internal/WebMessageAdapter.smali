.class public Landroidx/webkit/internal/WebMessageAdapter;
.super Ljava/lang/Object;
.source "WebMessageAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;


# instance fields
.field private mWebMessageCompat:Landroidx/webkit/WebMessageCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebMessageCompat;)V
    .locals 0
    .param p1, "webMessage"    # Landroidx/webkit/WebMessageCompat;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    .line 38
    return-void
.end method

.method private static toWebMessagePortCompats([Ljava/lang/reflect/InvocationHandler;)[Landroidx/webkit/WebMessagePortCompat;
    .locals 4
    .param p0, "ports"    # [Ljava/lang/reflect/InvocationHandler;

    .line 83
    array-length v0, p0

    new-array v0, v0, [Landroidx/webkit/WebMessagePortCompat;

    .line 84
    .local v0, "compatPorts":[Landroidx/webkit/WebMessagePortCompat;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 85
    new-instance v2, Landroidx/webkit/internal/WebMessagePortImpl;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    aput-object v2, v0, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "n":I
    :cond_0
    return-object v0
.end method

.method public static webMessageCompatFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Landroidx/webkit/WebMessageCompat;
    .locals 3
    .param p0, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 77
    new-instance v0, Landroidx/webkit/WebMessageCompat;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getData()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;->getPorts()[Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    invoke-static {v2}, Landroidx/webkit/internal/WebMessageAdapter;->toWebMessagePortCompats([Ljava/lang/reflect/InvocationHandler;)[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPorts()[Ljava/lang/reflect/InvocationHandler;
    .locals 4

    .line 49
    iget-object v0, p0, Landroidx/webkit/internal/WebMessageAdapter;->mWebMessageCompat:Landroidx/webkit/WebMessageCompat;

    invoke-virtual {v0}, Landroidx/webkit/WebMessageCompat;->getPorts()[Landroidx/webkit/WebMessagePortCompat;

    move-result-object v0

    .line 50
    .local v0, "ports":[Landroidx/webkit/WebMessagePortCompat;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/reflect/InvocationHandler;

    .line 53
    .local v1, "invocationHandlers":[Ljava/lang/reflect/InvocationHandler;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 54
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/webkit/WebMessagePortCompat;->getInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "n":I
    :cond_1
    return-object v1
.end method

.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
