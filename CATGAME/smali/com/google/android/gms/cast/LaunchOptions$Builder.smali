.class public final Lcom/google/android/gms/cast/LaunchOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/LaunchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzdb:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->zzdb:Lcom/google/android/gms/cast/LaunchOptions;

    .line 3
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/cast/LaunchOptions;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->zzdb:Lcom/google/android/gms/cast/LaunchOptions;

    return-object v0
.end method

.method public final setLocale(Ljava/util/Locale;)Lcom/google/android/gms/cast/LaunchOptions$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->zzdb:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/LaunchOptions;->setLanguage(Ljava/lang/String;)V

    .line 7
    return-object p0
.end method

.method public final setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions$Builder;->zzdb:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V

    .line 5
    return-object p0
.end method
