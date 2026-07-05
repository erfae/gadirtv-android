.class public final synthetic Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;II)V
    .locals 0

    iput p4, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->$r8$lambda$T0auuLwz-EMM99veZUbxskDo10s(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->$r8$lambda$UrmG531cBaBG_MqEWQ-130Gx_xM(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
