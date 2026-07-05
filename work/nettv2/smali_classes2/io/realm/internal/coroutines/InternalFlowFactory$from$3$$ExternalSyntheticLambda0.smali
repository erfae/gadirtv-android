.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/RealmChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;I)V
    .locals 0

    iput p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmModel;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$r8$lambda$XFoTSpTEZhDIZeA7qDK98ftgXB8(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmModel;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmList;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$6;->$r8$lambda$S4qgyjw_rcMOu5Hpev2YfnJKQd8(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmList;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$5;->$r8$lambda$2qjOtD7UrBzMxDiDhzxcjgLy8n4(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmList;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$r8$lambda$ozC-Cv0PV3WwfP7U6jQLd6TcYOo(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$3;->$r8$lambda$WGdWxo2RtlVUtd33NUxBJ5I1t-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;)V

    return-void

    :goto_0
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$3$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-static {v0, v1, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$8;->$r8$lambda$B3rGt53URu6XWz5d1Me9uYGmPb8(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/DynamicRealmObject;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
