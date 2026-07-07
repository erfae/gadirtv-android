.class public final Lcom/google/android/play/core/internal/zzba;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public static zza()Lcom/google/android/play/core/internal/zzaz;
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_34

    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_34

    new-instance v0, Lcom/google/android/play/core/internal/zzbq;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbq;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Lcom/google/android/play/core/internal/zzbp;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbp;-><init>()V

    return-object v0

    :pswitch_16
    new-instance v0, Lcom/google/android/play/core/internal/zzbm;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbm;-><init>()V

    return-object v0

    :pswitch_1c
    new-instance v0, Lcom/google/android/play/core/internal/zzbl;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbl;-><init>()V

    return-object v0

    :pswitch_22
    new-instance v0, Lcom/google/android/play/core/internal/zzbk;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbk;-><init>()V

    return-object v0

    :pswitch_28
    new-instance v0, Lcom/google/android/play/core/internal/zzbg;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbg;-><init>()V

    return-object v0

    :pswitch_2e
    new-instance v0, Lcom/google/android/play/core/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbf;-><init>()V

    return-object v0

    :cond_34
    :goto_34
    new-instance v0, Lcom/google/android/play/core/internal/zzbs;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbs;-><init>()V

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x15
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
