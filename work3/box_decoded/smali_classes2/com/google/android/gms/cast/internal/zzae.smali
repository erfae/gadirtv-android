.class public abstract Lcom/google/android/gms/cast/internal/zzae;
.super Lcom/google/android/gms/internal/cast/zza;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzab;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zza;-><init>(Ljava/lang/String;)V

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 56
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzg(I)V

    goto/16 :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzf(I)V

    goto/16 :goto_0

    .line 50
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/cast/internal/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzu;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzb(Lcom/google/android/gms/cast/internal/zzu;)V

    goto/16 :goto_0

    .line 47
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/cast/internal/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzb;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzb(Lcom/google/android/gms/cast/internal/zzb;)V

    goto/16 :goto_0

    .line 43
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzae;->zza(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 38
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 41
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/cast/internal/zzae;->zza(Ljava/lang/String;JI)V

    goto :goto_0

    .line 35
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->onApplicationDisconnected(I)V

    goto :goto_0

    .line 32
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzi(I)V

    goto :goto_0

    .line 29
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzj(I)V

    goto :goto_0

    .line 25
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/internal/zzae;->zza(Ljava/lang/String;[B)V

    goto :goto_0

    .line 21
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/internal/zzae;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p3

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;)Z

    move-result p2

    .line 19
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/cast/internal/zzae;->zza(Ljava/lang/String;DZ)V

    goto :goto_0

    .line 13
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzh(I)V

    goto :goto_0

    .line 7
    :pswitch_d
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
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/cast/internal/zzae;->zza(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzae;->zzb(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
