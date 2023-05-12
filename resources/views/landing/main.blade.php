<main>
            <section class="hero">
                <div class="container">
                    <div class="hero-inner">
						<div class="hero-copy">
	                        <h1 class="hero-title mt-0">
                                Bem Vindo ao servidor do seMazaGame
                            </h1>
	                        <p class="hero-paragraph">
                                Este servidor processa todas a informacoes utilizadas no aplicativo eMazaGame, somente utilizadores permitidos tem acesso  a area restrita deste servidor.</p>
	                        <div class="hero-cta"><a class="button button-primary" href="https://play.google.com/store/apps/details?id=explicador.co.mz&hl=en_US&pli=1" target="_blank">Baixar App</a>

                            @if(auth()->check())
                                <a class="button button-primary" href="/admin/profile">Perfil</a>

                            @else
                                <a  class="button button-primary" href="/admin">Entrar</a>

                            @endif


                        </div>
						</div>
						<div class="hero-figure anime-element">
							<svg class="placeholder" width="528" height="396" viewBox="0 0 528 396">
								<rect width="528" height="396" style="fill:transparent;" />
							</svg>
							<div class="hero-figure-box hero-figure-box-01" data-rotation="45deg"></div>
							<div class="hero-figure-box hero-figure-box-02" data-rotation="-45deg"></div>
							<div class="hero-figure-box hero-figure-box-03" data-rotation="0deg"></div>
							<div class="hero-figure-box hero-figure-box-04" data-rotation="-135deg"></div>
							<div class="hero-figure-box hero-figure-box-05"></div>
							<div class="hero-figure-box hero-figure-box-06"></div>
							<div class="hero-figure-box hero-figure-box-07"></div>
							<div class="hero-figure-box hero-figure-box-08" data-rotation="-22deg"></div>
							<div class="hero-figure-box hero-figure-box-09" data-rotation="-52deg"></div>
							<div class="hero-figure-box hero-figure-box-10" data-rotation="-50deg"></div>
						</div>
                    </div>
                </div>
            </section>

            <section class="features section">
                <div class="container">
					<div class="features-inner section-inner has-bottom-divider">
                        <div class="features-wrap">
                            <div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-01.svg')}}" alt="Feature 01">
                                    </div>
                                    <h4 class="feature-title mt-24">Aprenda Laravel</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
							<div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-02.svg')}}" alt="Feature 02">
                                    </div>
                                    <h4 class="feature-title mt-24">Aprenda Laravel</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
                            <div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-03.svg')}}" alt="Feature 03">
                                    </div>
                                    <h4 class="feature-title mt-24">Aprenda Laravel</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
                            <div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-04.svg')}}" alt="Feature 04">
                                    </div>
                                    <h4 class="feature-title mt-24">Aprenda Laravel</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
							<div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-05.svg')}}" alt="Feature 05">
                                    </div>
                                    <h4 class="feature-title mt-24">Aprenda Laravel</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
                            <div class="feature text-center is-revealing">
                                <div class="feature-inner">
                                    <div class="feature-icon">
										<img src="{{asset('template/dist/images/feature-icon-06.svg')}}" alt="Feature 06">
                                    </div>
                                    <h4 class="feature-title mt-24">Be Productive</h4>
                                    <p class="text-sm mb-0">Atraves do eMazaGame voce poder aprender tudo o que precisa. Aprenda, desde lingua, matematica, tecnologia e outras ciencias.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="pricing section">
                <div class="container-sm">
                    <div class="pricing-inner section-inner">
                        <div class="pricing-header text-center">
                            <h2 class="section-title mt-0">Aplicativo com precos acessivel</h2>
                            <p class="section-paragraph mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ad quis nostrud.</p>
                        </div>

						<div class="pricing-tables-wrap">
                           
                            <div class="pricing-table">
                                <div class="pricing-table-inner is-revealing">
                                    <div class="pricing-table-main">
                                        <div class="pricing-table-header pb-24">
                                            <div class="pricing-table-price"><span class="pricing-table-price-amount h1">Gratuito</span><span class="text-xs">/sempre</span></div>
                                        </div>
										<div class="pricing-table-features-title text-xs pt-24 pb-24">Todos os Recursos Basicos</div>
                                        <ul class="pricing-table-features list-reset text-xs">
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
											<li>
												<span>Lorem ipsum dolor sit nisi</span>
											</li>
                                        </ul>
                                    </div>





                                    <div class="pricing-table-cta mb-8">
                                        <a class="button button-primary button-shadow button-block" href="#">Baixar Agora</a>
                                    </div>
                                </div>
                            </div>



                            <div class="pricing-table">
                                <div class="pricing-table-inner is-revealing">
                                    <div class="pricing-table-main">
                                        <div class="pricing-table-header pb-24">
                                            <div class="pricing-table-price"><span class="pricing-table-price-currency h2">MT</span><span class="pricing-table-price-amount h1">129</span><span class="text-xs">/mes</span></div>
                                        </div>
										<div class="pricing-table-features-title text-xs pt-24 pb-24">Todos os Recursos</div>
                                        <ul class="pricing-table-features list-reset text-xs">
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
                                            <li>
                                                <span>Lorem ipsum dolor sit nisi</span>
                                            </li>
											<li>
												<span>Lorem ipsum dolor sit nisi</span>
											</li>
                                        </ul>
                                    </div>




                                    <div class="pricing-table-cta mb-8">
                                        <a class="button button-primary button-shadow button-block" href="#">Pre order now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

			<section class="cta section">
				<div class="container">
					<div class="cta-inner section-inner">
						<h3 class="section-title mt-0">Que tal baixar agora?</h3>
						<div class="cta-cta">
							<a class="button button-primary button-wide-mobile" href="#">Baixar Agora</a>
						</div>
					</div>
				</div>
			</section>
        </main>
