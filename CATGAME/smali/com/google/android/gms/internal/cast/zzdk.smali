.class public abstract Lcom/google/android/gms/internal/cast/zzdk;
.super Lcom/google/android/gms/internal/cast/zza;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zza;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 p1, 0x0

    return p1

    .line 50
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzdb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzdb;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzb(Lcom/google/android/gms/internal/cast/zzdb;)V

    .line 52
    goto/16 :goto_0

    .line 47
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzcj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzcj;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzb(Lcom/google/android/gms/internal/cast/zzcj;)V

    .line 49
    goto/16 :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzdk;->zza(Ljava/lang/String;J)V

    .line 46
    goto/16 :goto_0

    .line 38
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 41
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzdk;->zza(Ljava/lang/String;JI)V

    .line 42
    goto :goto_0

    .line 35
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->onApplicationDisconnected(I)V

    .line 37
    goto :goto_0

    .line 32
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzv(I)V

    .line 34
    goto :goto_0

    .line 29
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzw(I)V

    .line 31
    goto :goto_0

    .line 25
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdk;->zza(Ljava/lang/String;[B)V

    .line 28
    goto :goto_0

    .line 21
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdk;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 16
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p3

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 19
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzdk;->zza(Ljava/lang/String;DZ)V

    .line 20
    goto :goto_0

    .line 13
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzi(I)V

    .line 15
    goto :goto_0

    .line 7
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 11
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzdk;->zza(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    goto :goto_0

    .line 4
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdk;->zzu(I)V

    .line 6
    nop

    .line 54
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
