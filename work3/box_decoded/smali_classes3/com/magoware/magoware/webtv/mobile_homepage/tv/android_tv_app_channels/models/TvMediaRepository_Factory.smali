.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;
.super Ljava/lang/Object;
.source "TvMediaRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final collectionsDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataDAOProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collectionsDaoProvider",
            "metadataDAOProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->collectionsDaoProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->metadataDAOProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collectionsDaoProvider",
            "metadataDAOProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collectionsDao",
            "metadataDAO"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 3

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->collectionsDaoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->metadataDAOProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    move-result-object v0

    return-object v0
.end method
