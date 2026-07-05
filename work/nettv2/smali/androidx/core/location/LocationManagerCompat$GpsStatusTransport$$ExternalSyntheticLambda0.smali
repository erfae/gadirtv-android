.class public final synthetic Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p3, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->$r8$lambda$YdTHlyzRR62cUonlTLG1CDPrghk(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$0:Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->$r8$lambda$o4is_vEFQnCFL3phcwhrVAcNx6o(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
