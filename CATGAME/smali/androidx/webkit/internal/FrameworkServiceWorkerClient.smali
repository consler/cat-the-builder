.class public Landroidx/webkit/internal/FrameworkServiceWorkerClient;
.super Landroid/webkit/ServiceWorkerClient;
.source "FrameworkServiceWorkerClient.java"


# instance fields
.field private final mImpl:Landroidx/webkit/ServiceWorkerClientCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/ServiceWorkerClientCompat;)V
    .locals 0
    .param p1, "impl"    # Landroidx/webkit/ServiceWorkerClientCompat;

    .line 38
    invoke-direct {p0}, Landroid/webkit/ServiceWorkerClient;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/webkit/internal/FrameworkServiceWorkerClient;->mImpl:Landroidx/webkit/ServiceWorkerClientCompat;

    .line 40
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    .line 45
    iget-object v0, p0, Landroidx/webkit/internal/FrameworkServiceWorkerClient;->mImpl:Landroidx/webkit/ServiceWorkerClientCompat;

    invoke-virtual {v0, p1}, Landroidx/webkit/ServiceWorkerClientCompat;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
